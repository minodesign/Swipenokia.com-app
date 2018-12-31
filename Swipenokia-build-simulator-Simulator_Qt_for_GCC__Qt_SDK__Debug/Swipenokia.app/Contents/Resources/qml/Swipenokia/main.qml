import QtQuick 1.1
import com.nokia.meego 1.1

PageStackWindow {
    id: appWindow

    initialPage: mainPage

    MainPage {
        id: mainPage
    }

    DesignPage{
         id: designPage
     }

    FeaturesPage{
         id: featuresPage
     }

     AppsPage{
         id: appsPage
     }

     AccessoriesPage{
         id: accessoriesPage
     }

     AboutPage{
         id: aboutPage
     }
}
