classdef ParallelManager < handle
    properties
        profilename
        refreshtime
        walltime
        starttime
        last_check
    end
    
    methods
        function obj = ParallelManager(profilename_, walltime_, refreshtime_)
            obj.profilename = profilename_;
            obj.refreshtime = refreshtime_;
            obj.walltime = walltime_;
            obj.starttime = 0;
            obj.last_check = 0;
        end
        
        function obj = start(obj)
            obj.starttime = clock();
            matlabpool('open', obj.profilename);
        end
        
        function close(obj)
            matlabpool('close');
        end
        
        function restart(obj)
            obj.close();
            obj.start();
        end
        
        function obj = refresh_if_needed(obj)
            current = etime(clock(), obj.starttime);
            estimate_next_check = current - obj.last_check + current;
            if current > obj.refreshtime || estimate_next_check > obj.walltime
                % restart
                obj.restart();
            end
            obj.last_check = current;
        end
    end
end