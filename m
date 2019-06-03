Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AC63279B
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 06:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ShE9oP0PH2N6zI4vY4eFOqZqCHDGZXJ4o0XSBXurVrQ=; b=Jic7hM8xs3r1eX
	4R6AVwSJdFU3D+pBggI5XJ5jUTMGZJVxLYQa+p4M+ENotPF9XfcHrwiR6cmemf0ibyYoq4IeS0xA/
	dwSOhtRJAiN3TH/bD9oGcyZM3tnb+t/m8/DLxjxRBTUGTVlIP95X3tEYvosSM5x/lT/VrJprUu4O8
	PgEROUI8Tl1O6PrMln83u2kCMMH0rEREk8528jKxKJYmqPK0KYbito5IKq4T6q6XXWx7K2prsME9/
	1cz0gTURnDnwo76l9Yf85iw/rmbSoVs6NNsCboY+cumNNYY8TrSYkqk8amX9x2gRKsC/5IClLH3s2
	nYIrc6ZlPiJ/eKUWCl2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXeex-00022N-2W; Mon, 03 Jun 2019 04:33:23 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXeeo-0001vh-4t
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 04:33:15 +0000
Received: by mail-pl1-x641.google.com with SMTP id g69so6464904plb.7
 for <linux-rockchip@lists.infradead.org>; Sun, 02 Jun 2019 21:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gbBoXtkybCih+d0Fl03vwDQsITr3snGAAM8qh+nRjII=;
 b=VeaP4rlcKfdj36YiD4gQN5PLFZoAC42M84KJTEVRE31jLss30T+2akFEYuIFscw/ch
 osRR3hmV4eFkOymM8RI/dzrIeWeqmeCdj51ANhdIi8KizrDsWOPaglP+WSVFVgD9Tnl7
 MddyM0pP/JzICG9T/EMHkZSnnKGiIZeN7crL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gbBoXtkybCih+d0Fl03vwDQsITr3snGAAM8qh+nRjII=;
 b=hVm80XDpIgzpKBV3lfv/Hr25OwEGEIQH41fIvyGmZ1bdPJ6aWbPdUEYLV2N8nSb0+k
 qqNf028bVmw7UQVEclDL19lTaEmmy5AiotU1C2wFYvzmF3jURSeM+gLJNdHX6CqLx8gB
 5JLIJpXCvcBPHd9scWnPSyCFGrbVVZm7k+uw0+xYkd1TDs7Alzk5wWhsDZa6wdJN2A71
 rc8QOc7DAYf9Uag67dQS56a6s5y3EBQFueJPStqLfiu0+6fqyNoSX4XRyeF0tVWFyLNu
 S+o3whuNsVoVYpzcQkUSalJpggOGwjNINkRwWPbgbq0Zk2Dp633o2UQXjlZ6RK8aRgEw
 mv/w==
X-Gm-Message-State: APjAAAVwWNZJVO3h4nO8tup3zJn/9EfnEcqKxoeCMXEta2zYTgxj/YaW
 Kr8EoJIY/qXps9J+0Mb4c2ywGrkxni4=
X-Google-Smtp-Source: APXvYqwHPRACAb2NVy4vT95TjNhB37pT6HfXrPSfjEO5DvIiqn/QoGGQisMAL1weRQlGa/4txReURQ==
X-Received: by 2002:a17:902:54f:: with SMTP id
 73mr27187074plf.246.1559536392351; 
 Sun, 02 Jun 2019 21:33:12 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id d19sm11382053pjs.22.2019.06.02.21.33.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 21:33:11 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/7] Add HDMI audio support on RK3288 veyron board
Date: Mon,  3 Jun 2019 12:32:44 +0800
Message-Id: <20190603043251.226549-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_213314_233037_934C2476 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Cheng-Yi Chiang <cychiang@chromium.org>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, tzungbi@chromium.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dianders@chromium.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patch series is to support HDMI audio on RK3288 veyron board.

To support jack reporting, there are two old patches:

video: add HDMI state notifier support

<https://lore.kernel.org/linux-media/20161213150813.37966-2-hverkuil@xs4all.nl/>

ASoC: hdmi-codec: use HDMI state notifier to add jack support

<https://patchwork.kernel.org/patch/9430355/>

They are modified to pass checkpatch checking based on latest ASoC tree

https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git

for-next branch.

With these two patches at hand, hdmi-notifier support is then added to dw-hdmi
driver so the plug/unplug event can be passed to codec driver.

The rest patches are about machine driver rockchip_max98090.
A HDMI DAI link is added for HDMI playback so there will be two devices on
this sound card. One for max98090 and one for HDMI.
The HDMI node is passed from DTS so machine driver can set the correct
hdmi-notifier on codec driver.

Cheng-Yi Chiang (5):
  drm/bridge/synopsys: dw-hdmi: Add HDMI notifier support
  ASoC: rockchip_max98090: Add dai_link for HDMI
  ASoC: rockchip: rockchip-max98090: Add node for HDMI
  ASoC: rockchip_max98090: Add HDMI jack support
  ARM: dts: rockchip: Specify HDMI node to sound card node

Hans Verkuil (1):
  video: add HDMI state notifier support

Philipp Zabel (1):
  ASoC: hdmi-codec: use HDMI state notifier to add jack support

 .../bindings/sound/rockchip-max98090.txt      |   2 +
 MAINTAINERS                                   |   6 +
 .../boot/dts/rk3288-veyron-analog-audio.dtsi  |   1 +
 drivers/gpu/drm/bridge/synopsys/Kconfig       |   1 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  28 +++-
 drivers/video/Kconfig                         |   3 +
 drivers/video/Makefile                        |   1 +
 drivers/video/hdmi-notifier.c                 | 145 ++++++++++++++++++
 include/linux/hdmi-notifier.h                 | 112 ++++++++++++++
 include/sound/hdmi-codec.h                    |   7 +
 sound/soc/codecs/Kconfig                      |   1 +
 sound/soc/codecs/hdmi-codec.c                 | 104 ++++++++++++-
 sound/soc/rockchip/rockchip_max98090.c        | 123 ++++++++++++---
 13 files changed, 508 insertions(+), 26 deletions(-)
 create mode 100644 drivers/video/hdmi-notifier.c
 create mode 100644 include/linux/hdmi-notifier.h

-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
