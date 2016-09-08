# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module ElastiCache
    module Waiters
      class CacheClusterAvailable

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 40,
            delay: 15,
            poller: Aws::Waiters::Poller.new(
              "acceptors" => [
                {
                  "argument" => "CacheClusters[].CacheClusterStatus",
                  "expected" => "available",
                  "matcher" => "pathAll",
                  "state" => "success"
                },
                {
                  "argument" => "CacheClusters[].CacheClusterStatus",
                  "expected" => "deleted",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "CacheClusters[].CacheClusterStatus",
                  "expected" => "deleting",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "CacheClusters[].CacheClusterStatus",
                  "expected" => "incompatible-network",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "CacheClusters[].CacheClusterStatus",
                  "expected" => "restore-failed",
                  "matcher" => "pathAny",
                  "state" => "failure"
                }
              ],
              "description" => "Wait until ElastiCache cluster is available.",
              "operation" => "DescribeCacheClusters"
            )
          }.merge(options))
        end

        # @option (see Client#describe_cache_clusters)
        # @return (see Client#describe_cache_clusters)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end

      class CacheClusterDeleted

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 40,
            delay: 15,
            poller: Aws::Waiters::Poller.new(
              "acceptors" => [
                {
                  "argument" => "CacheClusters[].CacheClusterStatus",
                  "expected" => "deleted",
                  "matcher" => "pathAll",
                  "state" => "success"
                },
                {
                  "expected" => "CacheClusterNotFound",
                  "matcher" => "error",
                  "state" => "success"
                },
                {
                  "argument" => "CacheClusters[].CacheClusterStatus",
                  "expected" => "available",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "CacheClusters[].CacheClusterStatus",
                  "expected" => "creating",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "CacheClusters[].CacheClusterStatus",
                  "expected" => "incompatible-network",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "CacheClusters[].CacheClusterStatus",
                  "expected" => "modifying",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "CacheClusters[].CacheClusterStatus",
                  "expected" => "restore-failed",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "CacheClusters[].CacheClusterStatus",
                  "expected" => "snapshotting",
                  "matcher" => "pathAny",
                  "state" => "failure"
                }
              ],
              "description" => "Wait until ElastiCache cluster is deleted.",
              "operation" => "DescribeCacheClusters"
            )
          }.merge(options))
        end

        # @option (see Client#describe_cache_clusters)
        # @return (see Client#describe_cache_clusters)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end

      class ReplicationGroupAvailable

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 40,
            delay: 15,
            poller: Aws::Waiters::Poller.new(
              "acceptors" => [
                {
                  "argument" => "ReplicationGroups[].Status",
                  "expected" => "available",
                  "matcher" => "pathAll",
                  "state" => "success"
                },
                {
                  "argument" => "ReplicationGroups[].Status",
                  "expected" => "deleted",
                  "matcher" => "pathAny",
                  "state" => "failure"
                }
              ],
              "description" => "Wait until ElastiCache replication group is available.",
              "operation" => "DescribeReplicationGroups"
            )
          }.merge(options))
        end

        # @option (see Client#describe_replication_groups)
        # @return (see Client#describe_replication_groups)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end

      class ReplicationGroupDeleted

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 40,
            delay: 15,
            poller: Aws::Waiters::Poller.new(
              "acceptors" => [
                {
                  "argument" => "ReplicationGroups[].Status",
                  "expected" => "deleted",
                  "matcher" => "pathAll",
                  "state" => "success"
                },
                {
                  "argument" => "ReplicationGroups[].Status",
                  "expected" => "available",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "expected" => "ReplicationGroupNotFoundFault",
                  "matcher" => "error",
                  "state" => "success"
                }
              ],
              "description" => "Wait until ElastiCache replication group is deleted.",
              "operation" => "DescribeReplicationGroups"
            )
          }.merge(options))
        end

        # @option (see Client#describe_replication_groups)
        # @return (see Client#describe_replication_groups)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end
    end
  end
end