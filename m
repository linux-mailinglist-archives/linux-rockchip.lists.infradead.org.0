Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F158641AC
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jul 2019 09:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ts6kVyBj+J+v25RCFW76lAiohcawOFtCY5piXWGkihk=; b=Gl3+yia3CL19bo
	cQYNhnJknhfHmA9LLPzZyqLHIZi/uwP+I4pqE81ZJPVZBl3ilF0/Vubu6QWrYdqjGXLKi57O7GFey
	4he/FX9MLWOCH1N0UafCPB0VlXw3AAoKXGD0+9x7/w9tDXxLVlxDcI7HVpZWEsHz8m4ghBbjvCzWp
	H5CFDcYQoMEW8tEhUeMp3i0ICTWP3BM/1se3wrkQUUgZARhx5J1HZF8RTBVqOTPiAhX82/FdkLqGk
	K0MZNEWocF2ck1Ue0uDkEhsAgl9GP453ZpiLfiyyobjWfZZK5dbZXy94d1o+dFFVqq/v4Ug3Vum5J
	1hHmgqWLK3DO92LtbL1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl6iM-0005CK-Sq; Wed, 10 Jul 2019 07:08:32 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl6i4-00050F-LW
 for linux-rockchip@lists.infradead.org; Wed, 10 Jul 2019 07:08:14 +0000
Received: by mail-pf1-x444.google.com with SMTP id u14so650113pfn.2
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jul 2019 00:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l6Pj1C/JhLO9pIuL0o6GitOicJcsYgk0aas0LOHb1To=;
 b=QvHVOdXMpWGBXu6BQw2jb5hQWR/4IGqs4UNl0MT4bqGhu5Iajbok3zWGlXLBLlAlA9
 262x1usDPZZzrmJK/3Rcc1CmfG+FofUbFhNMjNYCW/5S2inZrI0tZc+5f/Yr3ArqOg1U
 UezUTifar1c9zaRSMgeuuMvYvOFH23m9ls4vM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l6Pj1C/JhLO9pIuL0o6GitOicJcsYgk0aas0LOHb1To=;
 b=Qfc1c7q/TJpYhs8ULJnBHPadd6bTWQQF3JMpKv3W2yZP6Kbh2NoOX6Ikmhst4sx3zy
 jZfaiBtOA3rNJBUY+Kqsmuoc7yvZJ85mgZQOTRzrZYdvyoD/DDrMdsrh6Wxzp9sewjn+
 024P3vAgcx0kyZtaSoWt80r92td+AdsZfUidtJlhZSBxxqyP3kLoqHyyRyy+Ymb1rovY
 NQbup76cyR1mcbIS3jv0ZM6C/knEYMmqj5VEcbKf1VBWLVMuDB9wB0+gcrTA1Lrk7rox
 xdOxxqLyBqmw4TipqZTTV5oK97W9jKrp1deNZka6KfxLDaWUAJoY5dsea+rz1abgitLF
 y41Q==
X-Gm-Message-State: APjAAAVzL8Whl79f+15W1F2qkaXidsZEYSPsfBvLtrD4YausyZtEl0aG
 1/BU3GpXNDv32OjadPX9xDZ7fQ==
X-Google-Smtp-Source: APXvYqyptBK3QFmyTbtCBUlG3BZ20BDJXUXcje4pWPJB6gSPNpTgfvwvrkqkt0izgOTaBRL2tpwJwQ==
X-Received: by 2002:a65:500d:: with SMTP id f13mr34874390pgo.151.1562742491443; 
 Wed, 10 Jul 2019 00:08:11 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id h9sm1150976pgk.10.2019.07.10.00.08.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 00:08:10 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/4] Add HDMI jack support on RK3288
Date: Wed, 10 Jul 2019 15:07:47 +0800
Message-Id: <20190710070751.260061-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_000812_735694_DEC3C508 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

Changes from v1 to v2:
- hdmi-codec.c: cleanup the sequence of hdmi_codec_jack_report and
  hdmi_codec_set_jack_detect.
- dw-hdmi.c: change argument of hdmi_codec_plugged_cb so it takes a generic
  device which has hdmi_codec_priv in its drvdata.
- dw-hdmi.c: add a helper function handle_plugged_change to check audio
  platform device and codec platform device before calling callback.
- dw-hdmi-c: avoid setting callback function if audio platform device or
  codec platform device is missing.
- rockchip_max98090: fix the checking of return code when setting sysclk
  on cpu_dai and codec_dai. cpu_dai error should be reported. For HDMI
  codec_dai, there is no need to set sysclk.

Cheng-Yi Chiang (4):
  ASoC: hdmi-codec: Add an op to set callback function for plug event
  drm: bridge: dw-hdmi: Report connector status using callback
  ASoC: rockchip_max98090: Add dai_link for HDMI
  ASoC: rockchip_max98090: Add HDMI jack support

 .../gpu/drm/bridge/synopsys/dw-hdmi-audio.h   |   3 +
 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  10 ++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  55 ++++++++-
 include/sound/hdmi-codec.h                    |  16 +++
 sound/soc/codecs/hdmi-codec.c                 |  45 +++++++
 sound/soc/rockchip/rockchip_max98090.c        | 116 ++++++++++++++----
 6 files changed, 221 insertions(+), 24 deletions(-)

-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
