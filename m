Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C98866A9C
	for <lists+linux-rockchip@lfdr.de>; Fri, 12 Jul 2019 12:05:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7VKfWuL83nta8U1WgJvzBnnLKENUXlIVraSglL7Rpes=; b=eqbWjSV8jG9v+u
	jMecvGTRFWUKQh+g837Wn7CGSX4cfRXqGkBGSU+uPYN76QGZ5bDQCcz1/a+TPxPUqf5XhLJ0bpFAO
	eyriw+zTcg75Aq+iHAyYyU6lAEy6u2bG1W9Th470TgdD1EdTRcwKunHdqgIwVMwaLGnhVZgnO73hM
	uhbEiyuVMzkC4T6S6xfbxsv6Wgm74uzMDQ3Kj0Y0AC3+7W8swHhXknF88kQN5/JtU7sJ5EQW/ug3P
	y2nH+3b7EoHHpmDqPe/S/ejheuZ1G8b94AKXC/pDU+Iah5E2xcu3QyGsOrlDR2UqvT0gyRqez7Nk6
	2vf0lBVs94eRRReK68iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlsQG-0007cL-Lt; Fri, 12 Jul 2019 10:05:00 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlsQC-0007bN-P9
 for linux-rockchip@lists.infradead.org; Fri, 12 Jul 2019 10:04:58 +0000
Received: by mail-pf1-x442.google.com with SMTP id m30so4095150pff.8
 for <linux-rockchip@lists.infradead.org>; Fri, 12 Jul 2019 03:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9+TShMWhLwN8SmBiAr6bXkiOWeqpu2JFdqFTK8VDDlU=;
 b=h5gkWOale1JKC7q3JJ5JGsYnwMF4rXg9ycUc8TyqSYhtPfDqhRXMww1hVtAmCVuclM
 LrU9dKHZvAhoV+SbdlPevRw4Qlz2t+djP0eaF314TPHOrJvU4wceLVI+L6oX3xV1R5CI
 ZLa7NiOko2q8t5XjCYGa2NgeIkOrLKeiErpTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9+TShMWhLwN8SmBiAr6bXkiOWeqpu2JFdqFTK8VDDlU=;
 b=HFhQ8MBziw4KRai8Qq4hBaHopoW4BZsZTW5Zk59ws1FTO5ZHqsDRKe7bMTdFMlTq6v
 dlHJC+5dUVIc42cwO2g+LQ4rAT/8rIQJmR7GVPpyJmlsP5gn8ZV/U63UWVw2P/lIL4E4
 gChvYvLt9grQQYsIfwLOCC2zCkAckfaKjF15PWrDG99S7kyMK8rAI3A6aj97S34pEWrB
 B4hGEkVKuN9UQwHBOT7Zl/1Ry2ZAJpOTsjgeBnp7ECSLnRSrqyJJK0DUUoRdcIWsFUsm
 Npq6z49jgHjJkYDkeS3eUp9p21cnW1v5AAWZOGfwYgYHqmPyrnKrQ4TUQhDPnl2kQL38
 noFA==
X-Gm-Message-State: APjAAAXSujC7rdxUYykrtNHRvJtnefOES4F0BJu7fBowmvH4OCnYA5GN
 +lnMCvXMrniieh0uxSSEiuoKnQ==
X-Google-Smtp-Source: APXvYqwATmqfXzDCdurIM9yTmyaXPTBgWhe7CgwnZbiAoCvMtazQjnDbkVjRZW0J7jvst+vKxiVZOQ==
X-Received: by 2002:a63:e807:: with SMTP id s7mr9495461pgh.194.1562925895786; 
 Fri, 12 Jul 2019 03:04:55 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id v3sm7501412pfm.188.2019.07.12.03.04.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 03:04:54 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/5] Add HDMI jack support on RK3288
Date: Fri, 12 Jul 2019 18:04:38 +0800
Message-Id: <20190712100443.221322-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_030456_835428_DBBC967E 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: alsa-devel@alsa-project.org, dianders@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 tzungbi@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, dgreid@chromium.org,
 linux-arm-kernel@lists.infradead.org, Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patch series supports HDMI jack reporting on RK3288, which uses
DRM dw-hdmi driver and hdmi-codec codec driver.

The previous discussion about reporting jack status using hdmi-notifier
and drm_audio_component is at

https://lore.kernel.org/patchwork/patch/1083027/

The new approach is to use a callback mechanism that is
specific to hdmi-codec.

Changes from v2 to v3:
- dw-hdmi-i2s-audio.c: Use fixed ID instead of auto ID.
- rk3288_hdmi_analog.c: Use the fixed name hdmi-audio-codec for codec device.
- rockchip_max98090: Use the fixed name hdmi-audio-codec for codec device.
- rockchip_max98090: Fix the dependency of hdmi-codec in Kconfig.

Cheng-Yi Chiang (5):
  ASoC: hdmi-codec: Add an op to set callback function for plug event
  drm: bridge: dw-hdmi: Report connector status using callback
  drm: dw-hdmi-i2s: Use fixed id for codec device
  ASoC: rockchip_max98090: Add dai_link for HDMI
  FROMLIST: ASoC: rockchip_max98090: Add HDMI jack support

 .../gpu/drm/bridge/synopsys/dw-hdmi-audio.h   |   3 +
 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  12 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  55 ++++++++-
 include/sound/hdmi-codec.h                    |  16 +++
 sound/soc/codecs/hdmi-codec.c                 |  45 +++++++
 sound/soc/rockchip/Kconfig                    |   3 +-
 sound/soc/rockchip/rk3288_hdmi_analog.c       |   3 +-
 sound/soc/rockchip/rockchip_max98090.c        | 116 ++++++++++++++----
 8 files changed, 226 insertions(+), 27 deletions(-)

-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
