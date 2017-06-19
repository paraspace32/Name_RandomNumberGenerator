module LookUp
	extend self
    
    def event_scores
    look_up = {
                "IssuesEvent": 7,
                "IssueCommentEvent": 6,
                "PushEvent": 5,
                "PullRequestReviewCommentEvent": 4,
                "WatchEvent": 3,
                "CreateEvent": 2
              }
	end

end
