/**
 * SPDX-FileCopyrightText: 2022 Yuchen Shi <bolshaya_schists@mail.gravitide.co>
 *
 * SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only OR LicenseRef-KDE-Accepted-GPL
 */

#ifndef CLIPBOARD_CONFIG_H
#define CLIPBOARD_CONFIG_H

#include "kcmplugin/kdeconnectpluginkcm.h"

namespace Ui
{
class ClipboardConfigUi;
}

class ClipboardConfig : public KdeConnectPluginKcm
{
    Q_OBJECT
public:
    ClipboardConfig(QObject *parent, const KPluginMetaData &data, const QVariantList &);
    ~ClipboardConfig() override;

    void save() override;
    void load() override;
    void defaults() override;

private:
    void autoShareChanged();
    Ui::ClipboardConfigUi *m_ui;
};

#endif
