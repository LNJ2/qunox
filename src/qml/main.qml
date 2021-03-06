/*
 *  QunoX - A Qt-based UNO card game clone using XMPP as back-end
 *
 *  Copyright (C) 2018 QunoX developers and contributors
 *  (see the LICENSE file for a full list of copyright authors)
 *
 *  QunoX is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  In addition, as a special exception, the author of QunoX gives
 *  permission to link the code of its release with the OpenSSL
 *  project's "OpenSSL" library (or with modified versions of it that
 *  use the same license as the "OpenSSL" library), and distribute the
 *  linked executables. You must obey the GNU General Public License in
 *  all respects for all of the code used other than "OpenSSL". If you
 *  modify this file, you may extend this exception to your version of
 *  the file, but you are not obligated to do so.  If you do not wish to
 *  do so, delete this exception statement from your version.
 *
 *  QunoX is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with QunoX.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.6
import QtQuick.Controls 2.2
import org.kde.kirigami 2.3 as Kirigami

Kirigami.ApplicationWindow {
    visible: true
    width: 1024
    height: 576

    globalDrawer: Kirigami.GlobalDrawer {
        title: "QunoX"

        actions: [
            Kirigami.Action {
                text: qsTr("Disconnect")
                enabled: qunox.state === 2
                iconName: "system-shutdown"
                onTriggered: {
                    qunox.disconnectFromServer()
                }
            }
        ]
    }

    Component {id: logInPage; LogInPage {}}

    Component.onCompleted: {
        pageStack.push(logInPage)
    }

    Component.onDestruction: {
    }
}
