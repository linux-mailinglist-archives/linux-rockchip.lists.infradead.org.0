Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4E1E4C31
	for <lists+linux-rockchip@lfdr.de>; Fri, 25 Oct 2019 15:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4EtoeLx/7pKCtIFigl0srWri0vvoTMfqxmEftozC5R4=; b=pJuvzZ6GaEKCqZ
	aFCuli4S7s6pqXROlg7nc7u7X4L3cETQ+wdPWQY4p6OTENKUT5/XEs3rOw5+zp8X9uRoNSXJ7UMBc
	HweMZb+C0DMFO3bzv2BRlxjLK5JmEYF6FwNZHrCnJ5K6Bkf0wgHpEyJYkwRnW3uEoaaxtMR+q2eLr
	5w8cV0Gdd5UNWqZwUqjlhmcAGJu5HKHlc/GOhnp4d2xGutapfDuKY1oMXM02tCaq8Bxa0zk+QhfJ6
	Te5PoHLvhd3FOiXflVdxuIgTVcdr+9zbLDPlo9AfqXfOrWf4SAYsdAdAGjKNYWkVzNhgrYOeXJQyG
	hIy+Ti2ukgmLoDfM+F/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNzfo-0007G4-2n; Fri, 25 Oct 2019 13:30:36 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNzfb-00075l-39
 for linux-rockchip@lists.infradead.org; Fri, 25 Oct 2019 13:30:24 +0000
Received: by mail-pf1-x443.google.com with SMTP id c13so1596102pfp.5
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Oct 2019 06:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pgk2VpYDvWxnQGOn4CatnKUbEjzqifjDf+V5kplLk3Y=;
 b=hkoiNtYvvdlvP8l6YHJ0NAcOrbqzyTeM8GV5/CrfA0sqk7Un42PZnP+hIk4FRUHCIp
 uJrYQ2nf1MsX5xGpT+4LwiS2I3HKNvMGsveUyU2msEa+qqz8o7Wpw53WLVf2C//dpdWz
 NESc7oSR3+f7btvnpogS3AxngiEYpeuPmaTk8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pgk2VpYDvWxnQGOn4CatnKUbEjzqifjDf+V5kplLk3Y=;
 b=fqLdhWR2LARL0PzwzGQrXLCKN/1Nmc4Sy7jEqHqZ5BouCqsrG2sBWmVq9Xv62Nlpx3
 Q3+afUXm88pEwwp4oYtjbc1pJVKBEAdtlG1GkGTk5JmjVWNJBmiZRLwb44+XJk+g4bj5
 R57aA4oj62PopMAfAZ4k47qXEEftb8n7LhVs7puGOvRGBe6tnRYLboLCClOgBG15nJet
 DIMfnd01ME9xvGIqvcZvoFVKEfM9oBmxlDRN9wD5/ANylieNeaR8Dx4PbZDq93DmUEIb
 ZHvjBdijcr8UleX/ky/Dof+ZLsh2LoJVz9YPFFvz2l8t0eCyP2h08GWSIy9gw4Do5owZ
 qaNg==
X-Gm-Message-State: APjAAAXJ2FkTRDpjM8Cm2m1gXV4SuiQbBSn8hZaimSmz77pl4Xm1S68/
 oEieKVtcLjN2lFesE4fD3c9hRw==
X-Google-Smtp-Source: APXvYqzpgx+nnjFmllOVgEw2I1Zze+v/IxDlqkvyVnWJ0/LUdRWU4MyQ5DhY20Cz7S6cmMoKn0X/FQ==
X-Received: by 2002:a65:4bc3:: with SMTP id p3mr4465303pgr.188.1572010221995; 
 Fri, 25 Oct 2019 06:30:21 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id q20sm2534518pfl.79.2019.10.25.06.30.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Oct 2019 06:30:20 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 0/6] Add HDMI jack support on RK3288
Date: Fri, 25 Oct 2019 21:30:01 +0800
Message-Id: <20191025133007.11190-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_063023_163182_D25F7B6E 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, alsa-devel@alsa-project.org,
 Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 Cheng-Yi Chiang <cychiang@chromium.org>, devicetree@vger.kernel.org,
 tzungbi@chromium.org, Jonas Karlman <jonas@kwiboo.se>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, dianders@chromium.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
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

The dependent change on hdmi-codec.c

6fa5963c37a2 ASoC: hdmi-codec: Add an op to set callback function for plug event

has been merged to upstream.

Changes from v7 to v8:

1. rockchip_max98090: Allow three different use cases:
   max98090-only: For backward compatibility where DTS does not specify HDMI node.
   HDMI-only: For HDMI-only board like veyron-mickey.
   max98090 + HDMI: For other veyron boards.
   Pass different compatible string to specify the use case.

2. Add more maintainers to cc-list for new device property reviewing.

Cheng-Yi Chiang (6):
  drm: bridge: dw-hdmi: Report connector status using callback
  ASoC: rockchip-max98090: Support usage with and without HDMI
  ASoC: rockchip_max98090: Optionally support HDMI use case
  ASoC: rockchip_max98090: Add HDMI jack support
  ARM: dts: rockchip: Add HDMI support to rk3288-veyron-analog-audio
  ARM: dts: rockchip: Add HDMI audio support to rk3288-veyron-mickey.dts

 .../bindings/sound/rockchip-max98090.txt      |  38 +-
 .../boot/dts/rk3288-veyron-analog-audio.dtsi  |   3 +-
 arch/arm/boot/dts/rk3288-veyron-mickey.dts    |   7 +
 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  11 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  41 +-
 include/drm/bridge/dw_hdmi.h                  |   4 +
 sound/soc/rockchip/Kconfig                    |   3 +-
 sound/soc/rockchip/rockchip_max98090.c        | 392 +++++++++++++++---
 8 files changed, 425 insertions(+), 74 deletions(-)

-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
