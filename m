Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1A96070B
	for <lists+linux-rockchip@lfdr.de>; Fri,  5 Jul 2019 16:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0IoMDri+NtajmPiEYd8exK+ILEWO5D5DvaAhxzyLFi4=; b=KRhAk8L5QxYvao
	rJMQlDsGFIm5V2Pwxugw44iF/1+hUF4Fdq64GCPfCrqS5Es5KiINYwUYNR5NBPTkFhzjZiiX7g/XO
	TUTwRAKx9NySBG/zpoWo1qAaWMm6zBZXgwKVjHup3bWr/ze/7f6NeNh5QJ2bYnek9yNDfq3JTzgeb
	k1RCEsqi3WkMcbGCmeTfElTCftdGaur320I2zxi7/v+C9nHUuhPLto/iNe3dRTBRAlkNMw0pIo6rW
	FePyYZx+Xn5jD3TmNAr4LcGPqs2J3uOeIsYOiHKHbjctxxi1THAsM9R2VseSxrPoOeIyRgnjOhmrI
	OsmknYKQMyEPuqKyWztg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOlF-0004Wy-69; Fri, 05 Jul 2019 14:00:25 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOfP-0004Xr-Bv
 for linux-rockchip@bombadil.infradead.org; Fri, 05 Jul 2019 13:54:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ensoF4e5rXwj74hLBAIVZsxBBZL6nZ0Z+cRMEnh3LdU=; b=L9dsxu4qGMDu0gs+yV4eml5Trl
 G63sKs7H4mSxqIK2BMG77pDWundO4vlKQo8I+HJ8YbUsuEeySHPq+9Hs7NYB9ST/ksaZU7aLt2G0n
 CR5D4xTPhPOT+DSiLIBYOKo0rHuzYtwOGHMpQG3jJfrnrqAsReoIW1EhktCX0fAV7XH6C0Of9BPGW
 TJ4URTcjPCqeZzRcicJuUYPRXrxP5owHnb2l8PvoLPQBlOz3lxI+KDlTRrGx5GI3LWnsd1KeSE6KW
 VkeMbVsletQOmRhyl3SUP72FPtdxEaXGwyZqixWYHaZGmcsaozyQ8J9SCujDsa5f1xFIIjF0Fc9Yz
 Mr6citgA==;
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjFpt-0007Ll-4e
 for linux-rockchip@lists.infradead.org; Fri, 05 Jul 2019 04:28:38 +0000
Received: by mail-pg1-x541.google.com with SMTP id s27so3702873pgl.2
 for <linux-rockchip@lists.infradead.org>; Thu, 04 Jul 2019 21:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ensoF4e5rXwj74hLBAIVZsxBBZL6nZ0Z+cRMEnh3LdU=;
 b=FH7xwm41hWZcz/bAm+ebH7WH/5qVUe7aIauNjE+VqhgU4DONdUYDjR6z3/jLVCpfFL
 +ZyqOEs/+VQDuVAKFfcSwZkA8O1zp5vb1wdIIFfnHLEfwZVUyvh2eD1eewv/HY0dGTZy
 hOrcbDsGJEEK2DJUNTWxd/2vDfa0hfcJ7qHBs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ensoF4e5rXwj74hLBAIVZsxBBZL6nZ0Z+cRMEnh3LdU=;
 b=rW9PgpSzXoRNH+a3+3OnJ1Oo4sJQSHVX55RFGBw88E7tH/Xp4okMhPu+vvKQIxQX6M
 7KqcW3NIEN1CaqDSd5D2Etj4+7/tZVkCn62Mrl3QxEF3UBHULd5lnXo6LNsye/cmzMzH
 oExDg+pqyjcrvbErJgowxc9uCRMDhGz6MG0so8kN+kdh4d1vlcrV+dpHopof7FsgNxS4
 T6MEN7QMAZQWLUSMLtFohVv7VlkYBBUgkApXLMIQleCUWkvr44iYYAGBI/mkVdIeLElW
 Ars68c2OP0VsTb6Mam07KJRTmFIjYkJRapUZfmZndTYqXlOyIFH1wE8tu1RUssTcKFBz
 pH7A==
X-Gm-Message-State: APjAAAVwAnypx6lP+eRlT1QPCJD/k8ghmDoj2vdQUo3AzqKL7QFuRWC0
 sh5rOEjwHdbMfXMzZeBmoN1uVQ==
X-Google-Smtp-Source: APXvYqyf2nrb7RrUXLJ76qJyQDgKtq5/C+VLUCT/21TfLnfPJ/m2mK68NmzbeQqbgUJDJTJaH+v/mQ==
X-Received: by 2002:a17:90a:e38f:: with SMTP id
 b15mr2098527pjz.85.1562300791713; 
 Thu, 04 Jul 2019 21:26:31 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id q3sm6050507pgv.21.2019.07.04.21.26.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jul 2019 21:26:30 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] Add HDMI jack support on RK3288
Date: Fri,  5 Jul 2019 12:26:19 +0800
Message-Id: <20190705042623.129541-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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

Cheng-Yi Chiang (4):
  ASoC: hdmi-codec: Add an op to set callback function for plug event
  drm: bridge: dw-hdmi: Report connector status using callback
  ASoC: rockchip_max98090: Add dai_link for HDMI
  ASoC: rockchip_max98090: Add HDMI jack support

 .../gpu/drm/bridge/synopsys/dw-hdmi-audio.h   |   3 +
 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  10 ++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  32 ++++-
 include/sound/hdmi-codec.h                    |  16 +++
 sound/soc/codecs/hdmi-codec.c                 |  52 ++++++++
 sound/soc/rockchip/rockchip_max98090.c        | 112 ++++++++++++++----
 6 files changed, 201 insertions(+), 24 deletions(-)

-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
