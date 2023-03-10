
#include <rocky_vsg/EngineVSG.h>

#include <rocky/TMSImageLayer.h>
#include <rocky/TMSElevationLayer.h>

int error(const rocky::Status& status)
{
    rocky::Log::warn() << "Problem: " << status.message << std::endl;
    return -1;
}

int main(int argc, char** argv)
{
    // instantiate the engine.
    rocky::EngineVSG engine(argc, argv);

    // add an imagery layer
    auto imagery = rocky::TMSImageLayer::create();
    imagery->setURI("https://readymap.org/readymap/tiles/1.0.0/7/");
    engine.map()->layers().add(imagery);

    if (imagery->status().failed())
        return error(imagery->status());

    // add an elevation layer
    auto elevation = rocky::TMSElevationLayer::create();
    elevation->setURI("https://readymap.org/readymap/tiles/1.0.0/116/");
    engine.map()->layers().add(elevation);

    if (elevation->status().failed())
        return error(elevation->status());

    // run until the user quits.
    return engine.run();
}
