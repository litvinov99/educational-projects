#pragma once
#include "document.h"
#include "search_server.h"

#include <deque>
#include <vector>

class RequestQueue {
public:
    template <typename DocumentPredicate>
    std::vector<Document> AddFindRequest(const std::string& raw_query, DocumentPredicate document_predicate);
    
    explicit RequestQueue(const SearchServer& search_server);
    std::vector<Document> AddFindRequest(const std::string& raw_query, DocumentStatus status);
    std::vector<Document> AddFindRequest(const std::string& raw_query);
    int GetNoResultRequests() const;
    
private:
    struct QueryResult {
        std::vector<Document> result;
    };
    
    std::deque<QueryResult> requests_;
    const SearchServer& search_server_;
    const static int min_in_day_ = 1440;
    int number_of_empty_requests = 0;
};

template <typename DocumentPredicate>
std::vector<Document> RequestQueue::AddFindRequest(const std::string& raw_query, DocumentPredicate document_predicate) {
    auto result = search_server_.FindTopDocuments(raw_query, document_predicate);
    if (requests_.size() >= min_in_day_) {
        if (requests_[0].result.size() != 0) {
            --number_of_empty_requests;
            requests_.pop_back();  
        }
    }
    if (result.empty()) {
        ++number_of_empty_requests;
    }
    requests_.push_front({result});
    return result;
}