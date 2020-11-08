//
// DefaultAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class DefaultAPI {
    /**
     get comments for each post
     
     - parameter postId: (path) A post id 
     - parameter page: (query) page number from 0 to 999 (optional)
     - parameter limit: (query) items amount limit from 5 to 50 (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func commentsCollection(postId: String, page: Int? = nil, limit: Int? = nil, apiResponseQueue: DispatchQueue = DummyAPIConfig.apiResponseQueue, completion: @escaping ((_ data: Comments?,_ error: Error?) -> Void)) {
        commentsCollectionWithRequestBuilder(postId: postId, page: page, limit: limit).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     get comments for each post
     - GET /post/{postId}/comment
     - Get all comments for a post 
     - parameter postId: (path) A post id 
     - parameter page: (query) page number from 0 to 999 (optional)
     - parameter limit: (query) items amount limit from 5 to 50 (optional)
     - returns: RequestBuilder<Comments> 
     */
    open class func commentsCollectionWithRequestBuilder(postId: String, page: Int? = nil, limit: Int? = nil) -> RequestBuilder<Comments> {
        var path = "/post/{postId}/comment"
        let postIdPreEscape = "\(APIHelper.mapValueToPathItem(postId))"
        let postIdPostEscape = postIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{postId}", with: postIdPostEscape, options: .literal, range: nil)
        let URLString = DummyAPIConfig.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Comments>.Type = DummyAPIConfig.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     get a post with id
     
     - parameter postId: (path) A post id 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func post(postId: String, apiResponseQueue: DispatchQueue = DummyAPIConfig.apiResponseQueue, completion: @escaping ((_ data: Post?,_ error: Error?) -> Void)) {
        postWithRequestBuilder(postId: postId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     get a post with id
     - GET /post/{postId}
     - Post's content with a given id 
     - parameter postId: (path) A post id 
     - returns: RequestBuilder<Post> 
     */
    open class func postWithRequestBuilder(postId: String) -> RequestBuilder<Post> {
        var path = "/post/{postId}"
        let postIdPreEscape = "\(APIHelper.mapValueToPathItem(postId))"
        let postIdPostEscape = postIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{postId}", with: postIdPostEscape, options: .literal, range: nil)
        let URLString = DummyAPIConfig.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Post>.Type = DummyAPIConfig.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     get posts list for a user with a given id
     
     - parameter userId: (path) A user id 
     - parameter page: (query) page number from 0 to 999 (optional)
     - parameter limit: (query) items amount limit from 5 to 50 (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func posts(userId: String, page: Int? = nil, limit: Int? = nil, apiResponseQueue: DispatchQueue = DummyAPIConfig.apiResponseQueue, completion: @escaping ((_ data: Posts?,_ error: Error?) -> Void)) {
        postsWithRequestBuilder(userId: userId, page: page, limit: limit).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     get posts list for a user with a given id
     - GET /post/{userId}/post
     - Posts list created by user with userId 
     - parameter userId: (path) A user id 
     - parameter page: (query) page number from 0 to 999 (optional)
     - parameter limit: (query) items amount limit from 5 to 50 (optional)
     - returns: RequestBuilder<Posts> 
     */
    open class func postsWithRequestBuilder(userId: String, page: Int? = nil, limit: Int? = nil) -> RequestBuilder<Posts> {
        var path = "/post/{userId}/post"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = DummyAPIConfig.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Posts>.Type = DummyAPIConfig.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     get posts list by tag title
     
     - parameter tagTitle: (path) tag title 
     - parameter page: (query) page number from 0 to 999 (optional)
     - parameter limit: (query) items amount limit from 5 to 50 (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postsByTag(tagTitle: String, page: Int? = nil, limit: Int? = nil, apiResponseQueue: DispatchQueue = DummyAPIConfig.apiResponseQueue, completion: @escaping ((_ data: Posts?,_ error: Error?) -> Void)) {
        postsByTagWithRequestBuilder(tagTitle: tagTitle, page: page, limit: limit).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     get posts list by tag title
     - GET /tag/{tagTitle}/post
     - Posts list by tag 
     - parameter tagTitle: (path) tag title 
     - parameter page: (query) page number from 0 to 999 (optional)
     - parameter limit: (query) items amount limit from 5 to 50 (optional)
     - returns: RequestBuilder<Posts> 
     */
    open class func postsByTagWithRequestBuilder(tagTitle: String, page: Int? = nil, limit: Int? = nil) -> RequestBuilder<Posts> {
        var path = "/tag/{tagTitle}/post"
        let tagTitlePreEscape = "\(APIHelper.mapValueToPathItem(tagTitle))"
        let tagTitlePostEscape = tagTitlePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{tagTitle}", with: tagTitlePostEscape, options: .literal, range: nil)
        let URLString = DummyAPIConfig.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Posts>.Type = DummyAPIConfig.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get posts list
     
     - parameter page: (query) page number from 0 to 999 (optional)
     - parameter limit: (query) items amount limit from 5 to 50 (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postsCollection(page: Int? = nil, limit: Int? = nil, apiResponseQueue: DispatchQueue = DummyAPIConfig.apiResponseQueue, completion: @escaping ((_ data: Posts?,_ error: Error?) -> Void)) {
        postsCollectionWithRequestBuilder(page: page, limit: limit).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get posts list
     - GET /post
     - Returns a paginated posts list 
     - parameter page: (query) page number from 0 to 999 (optional)
     - parameter limit: (query) items amount limit from 5 to 50 (optional)
     - returns: RequestBuilder<Posts> 
     */
    open class func postsCollectionWithRequestBuilder(page: Int? = nil, limit: Int? = nil) -> RequestBuilder<Posts> {
        let path = "/post"
        let URLString = DummyAPIConfig.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Posts>.Type = DummyAPIConfig.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     get tags list
     
     - parameter page: (query) page number from 0 to 999 (optional)
     - parameter limit: (query) items amount limit from 5 to 50 (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func tagsCollection(page: Int? = nil, limit: Int? = nil, apiResponseQueue: DispatchQueue = DummyAPIConfig.apiResponseQueue, completion: @escaping ((_ data: Tags?,_ error: Error?) -> Void)) {
        tagsCollectionWithRequestBuilder(page: page, limit: limit).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     get tags list
     - GET /tag
     - All tags 
     - parameter page: (query) page number from 0 to 999 (optional)
     - parameter limit: (query) items amount limit from 5 to 50 (optional)
     - returns: RequestBuilder<Tags> 
     */
    open class func tagsCollectionWithRequestBuilder(page: Int? = nil, limit: Int? = nil) -> RequestBuilder<Tags> {
        let path = "/tag"
        let URLString = DummyAPIConfig.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Tags>.Type = DummyAPIConfig.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     get user's full profile
     
     - parameter userId: (path) A user id 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func user(userId: String, apiResponseQueue: DispatchQueue = DummyAPIConfig.apiResponseQueue, completion: @escaping ((_ data: User?,_ error: Error?) -> Void)) {
        userWithRequestBuilder(userId: userId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     get user's full profile
     - GET /user/{userId}
     - User's full profile 
     - parameter userId: (path) A user id 
     - returns: RequestBuilder<User> 
     */
    open class func userWithRequestBuilder(userId: String) -> RequestBuilder<User> {
        var path = "/user/{userId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = DummyAPIConfig.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<User>.Type = DummyAPIConfig.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get users list
     
     - parameter page: (query) page number from 0 to 999 (optional)
     - parameter limit: (query) items amount limit from 5 to 50 (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usersCollection(page: Int? = nil, limit: Int? = nil, apiResponseQueue: DispatchQueue = DummyAPIConfig.apiResponseQueue, completion: @escaping ((_ data: Users?,_ error: Error?) -> Void)) {
        usersCollectionWithRequestBuilder(page: page, limit: limit).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get users list
     - GET /user
     - Returns a paginated users' list 
     - parameter page: (query) page number from 0 to 999 (optional)
     - parameter limit: (query) items amount limit from 5 to 50 (optional)
     - returns: RequestBuilder<Users> 
     */
    open class func usersCollectionWithRequestBuilder(page: Int? = nil, limit: Int? = nil) -> RequestBuilder<Users> {
        let path = "/user"
        let URLString = DummyAPIConfig.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Users>.Type = DummyAPIConfig.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
