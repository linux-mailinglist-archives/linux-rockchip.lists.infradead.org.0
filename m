Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 151316A7CF
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 13:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m9c1Xx0bKy/ap2dmJsSqTJxCqnIVsCGjG+8wkg2M5U4=; b=ZlVbazwBESTa6j
	sqfMEKcCLH+HpSuRtxDU+JjwlrX5f2U7oK8vtz/UBU9aL0L2J1q51nWlqqyLKbn6l/yH9UQi4jElo
	TcClGDVPb1n9GHMmtkkCNXQizbhnGfHBcS/HyjRdNS7mu1Hk+TErFWdfiLAd5sZ+Ez5cjKbiGhuVG
	EvA5Ia04HeFETnFO7mOYx/MNQSiiuRAK7GqD8Hx223Ia0hUWPFu4YNkk1R3WJsVA5oi56dzyuMARZ
	PYEbMcIb+hSahTmYNReEmuCjdQ+odsG0XLcBvLJDmHvrLOqh/W1hS9RVyuy0RdOjlp5FDVtQN93uO
	m+jiR5bCdDIKoChO2JNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM5r-0003WX-LX; Tue, 16 Jul 2019 11:58:04 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM5U-0003GR-NB
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:57:42 +0000
Received: by mail-pg1-x544.google.com with SMTP id s1so3027319pgr.2
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IeXE1WNIbLgZbuXjaQOxWA+uaePxQPbUYQ3+kYNaWMc=;
 b=ktGe9+lAGPHwFi/wlz8lD76+AeIaTQtERkWK4VsGnh1JYg9WPux230jP1y7OvF1kD+
 ZXbjD8fqqdXuMjOOoKBf0pLRsxEuM6VZC4+OvbNncs/GBXHHvW2rt6ldjj/ebR3ZDpu+
 XNugwN2hk34e+scqI+o0eCXzJhj5hbsMCDaiw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IeXE1WNIbLgZbuXjaQOxWA+uaePxQPbUYQ3+kYNaWMc=;
 b=A9Z7Y2GIeQx0ByXokn043ppHVMFDTboQ98tqA8E0KjqbAeKPnam12qkw397sM1W6yW
 QfNrLC/SlB5JXHLeKt4W2qIT3AKxFVYbjBF/tOyV8KtdLuzzUJ4btNUX3RM3KUJmHo12
 IHwEkF3tGZGmbkuz0zFsbozL1JVYDdQZXWpc+NyNHO8Cz/0LMCKjhJoJuogKcUreHwaP
 ArH3/k/sguoTc8cAMKv/BZ2asCEymI7XqksMDW6T5COnk4XOLs7vLv+n/YNvFbEjHtgy
 FQYmsEvO1M6eHYRZixv02AzpoIjBXnWgJ6pAPguNQy0AmVLdP+NaGxioV43MkexGf7qI
 cN4Q==
X-Gm-Message-State: APjAAAVsjIiIUwo8NSC8PjM1myhbby3x/IpFThgp3yCEcTS+/u3yqgYc
 eUm6yn7YVA+4U9I/XUgKUJ9XHg==
X-Google-Smtp-Source: APXvYqxZI85uD2GdvaU3cmn0bFXHmYYOfFV7BJ7eG6YxMTU8Do/1HOLml+Z27bIuOXPOuQu/8HZpFg==
X-Received: by 2002:a63:1215:: with SMTP id h21mr33096297pgl.221.1563278255748; 
 Tue, 16 Jul 2019 04:57:35 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id e10sm21197516pfi.173.2019.07.16.04.57.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:57:34 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/5] Add HDMI jack support on RK3288
Date: Tue, 16 Jul 2019 19:57:20 +0800
Message-Id: <20190716115725.66558-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045740_756504_4589A3B9 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Changes from v3 to v4:
- hdmi-codec.h: Modify the hook_plugged_cb ops to take an additional argument,
  that is, the pointer to struct device for codec device.
- dw-hdmi-i2s-audio.c: Simplify the registration of callback so it uses
  dw_hdmi_set_plugged_cb exported by dw-hdmi.c.
- dw-hdmi.c: Simplify the flow to invoke callback since now dw_hdmi has a
  pointer to codec device as callback argument. There is no need to rely
  on driver data of other driver.
- dw-hdmi.c: Minor change for readability.
- synopsys/Kconfig: Fix the dependency of hdmi-codec in Kconfig.
- Fixed the incorrect FROMLIST title of patch 5/5.

Cheng-Yi Chiang (5):
  ASoC: hdmi-codec: Add an op to set callback function for plug event
  drm: bridge: dw-hdmi: Report connector status using callback
  drm: dw-hdmi-i2s: Use fixed id for codec device
  ASoC: rockchip_max98090: Add dai_link for HDMI
  ASoC: rockchip_max98090: Add HDMI jack support

 drivers/gpu/drm/bridge/synopsys/Kconfig       |   2 +-
 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  13 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  41 ++++++-
 include/drm/bridge/dw_hdmi.h                  |   4 +
 include/sound/hdmi-codec.h                    |  17 +++
 sound/soc/codecs/hdmi-codec.c                 |  46 +++++++
 sound/soc/rockchip/Kconfig                    |   3 +-
 sound/soc/rockchip/rk3288_hdmi_analog.c       |   3 +-
 sound/soc/rockchip/rockchip_max98090.c        | 116 ++++++++++++++----
 9 files changed, 217 insertions(+), 28 deletions(-)

-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
