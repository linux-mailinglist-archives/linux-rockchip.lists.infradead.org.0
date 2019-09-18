Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92887B5F16
	for <lists+linux-rockchip@lfdr.de>; Wed, 18 Sep 2019 10:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=84lb2pXCAqqqtEjT6yklhk6BGjnkQUWWu+VFcGaQZzs=; b=DTx1NSu/Qb4bSc
	FST5K0qydY8+uwX+5znY/5gODEy7qHiuV7q8ysY8fvZe3BbXMgA/ZodTCCm0/z/xCLCrRchqgGUVB
	JSTLhjDTv98PSe5QYWpNMprnXC7Vc9zlAp2N6qKj3Wh6aUHTvwK/m6ieVPMnjW1UpcQaoSjiud9eR
	J3awHKiF/A/kbLEdd5fSwpXEucvajgi41AvK3P3immYDk6kJTcHuAoOTWL+4WDhR9RAW2kFqkCCza
	stohBGS2giy+24CaYFsDpzUA85uoDShIImgFDrBJcsnTnaXbLykdgG3zLl5Mrd420ZZw1ltcdFzMu
	La+9iWpPQLIpOy6LvKrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAVH7-0004nJ-8x; Wed, 18 Sep 2019 08:25:21 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAVH2-0004me-Ch
 for linux-rockchip@lists.infradead.org; Wed, 18 Sep 2019 08:25:17 +0000
Received: by mail-pl1-x641.google.com with SMTP id e5so2762712pls.9
 for <linux-rockchip@lists.infradead.org>; Wed, 18 Sep 2019 01:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VKl0NI5uuTzXRMlZIfLK2DJ9dA76CcXi+wvYjjhfeJ4=;
 b=QjtMNatKQcwth+X0GKHkr+Z2zJz6zbi9oKCgR26mEnXpfoUjWiImm9bASZSwNJTdA7
 2sYwbfAxoZKJIti+khkPv+rHKQ/aqRnzVaaVyCAV9sxHcFnNpVTLVkNumDYo8RwYrBU6
 qQ5EfggIIMUwE/rxyvwKGoh69y/Hl9FmhmtWE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VKl0NI5uuTzXRMlZIfLK2DJ9dA76CcXi+wvYjjhfeJ4=;
 b=RyKJdM2cqfL7xsU95pGMH272HRb/gB87bm5cAMt7EZMb3ndo/O7z64+5DCOIk4vHhu
 dJJ8sGx3es7zs6EroYdUq2trKpVeyhemY3iu6OyGtrKaPcz1q4uDXkTVxVHPFawy0vo7
 WyLC8beVyLh2of3km0+TCvJy0vrE3REB8DhpUq9GA5JqsYM5wGmiONLwJleq23aDlHsG
 D6NPykcKAcOjcVbxobNAE7waWh7xV0ufFadJs7BMEsOGuI+zXOOGk/wAgB6tam9lnX9D
 QSNgBICOLz26XCtVYEelw1wTVR362ELjPJ2UWf5RxZgtTJIZZQsn+ZRbwodugLlrCHf6
 IxIQ==
X-Gm-Message-State: APjAAAWXFCNENQt1UIttOK2/7sJZYj9TzFLVS+pcC6CwtpKejUR5esNw
 k1nHDQBynCdUg10rZsLu5i2FvA==
X-Google-Smtp-Source: APXvYqzayEko5q8A495MmFMU31IxcUPuZcsYT8Q3ERIy5jSSRpRvbSnJkE1FFghYilaSJdpwBGfTCA==
X-Received: by 2002:a17:902:ba95:: with SMTP id
 k21mr3061713pls.80.1568795114731; 
 Wed, 18 Sep 2019 01:25:14 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id y28sm8689470pfq.48.2019.09.18.01.25.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Sep 2019 01:25:13 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/4] Add HDMI jack support on RK3288
Date: Wed, 18 Sep 2019 16:24:56 +0800
Message-Id: <20190918082500.209281-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.23.0.237.gc6a4ce50a0-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_012516_479575_2D579CC9 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Liam Girdwood <lgirdwood@gmail.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 Cheng-Yi Chiang <cychiang@chromium.org>, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 dianders@chromium.org, Daniel Vetter <daniel@ffwll.ch>
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

https://patchwork.kernel.org/patch/11047447

has been picked up by Mark Brown in ASoC tree for-5.4 branch.

Changes from v5 to v6:

1. Remove the patch for sound/soc/codecs/hdmi-codec.c because it is accepted.
2. Rebase the rest of patches based on drm-misc-next tree.

Cheng-Yi Chiang (4):
  drm: bridge: dw-hdmi: Report connector status using callback
  drm: dw-hdmi-i2s: Use fixed id for codec device
  ASoC: rockchip_max98090: Add dai_link for HDMI
  ASoC: rockchip_max98090: Add HDMI jack support

 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  13 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  41 ++++++-
 include/drm/bridge/dw_hdmi.h                  |   4 +
 sound/soc/rockchip/Kconfig                    |   3 +-
 sound/soc/rockchip/rk3288_hdmi_analog.c       |   3 +-
 sound/soc/rockchip/rockchip_max98090.c        | 116 ++++++++++++++----
 6 files changed, 153 insertions(+), 27 deletions(-)

-- 
2.23.0.237.gc6a4ce50a0-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
