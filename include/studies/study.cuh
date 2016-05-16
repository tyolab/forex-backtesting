#ifndef STUDY_H
#define STUDY_H

#include <vector>
#include <map>
#include <string>
#include <algorithm>
#include "types/tick.cuh"

class Study {
    private:
        std::vector<Tick*> *data;
        int dataLength;
        std::map<std::string, double> inputs;
        std::map<std::string, std::string> outputMap;
        std::map<std::string, double> tickOutputs;

    protected:
        double getInput(std::string key);
        std::string getOutputMapping(std::string key);
        std::vector<Tick*> *getDataSegment(int length);
        Tick *getPreviousTick();
        Tick *getLastTick();
        void setTickOutput(std::string key, double value);
        void resetTickOutputs();

    public:
        Study(std::map<std::string, double> inputs, std::map<std::string, std::string> outputMap);
        void setData(std::vector<Tick*> *data);
        std::map<std::string, std::string> &getOutputMap();
        virtual void tick() = 0;
        std::map<std::string, double> getTickOutputs();
};

#endif