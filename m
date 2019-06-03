Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC5F327D8
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 06:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1yJ+icT1j+QpUpWLsbFnIeSDvzxTiC20IuVmouAAIFg=; b=a/foeAeADgA8d3
	UgtcFMKrC7zPYMk9PbJGN1gxBKy+Ez8VCptp8IZrTLO+EG4ApGkzuqvqeEyAlvu5tQpfDxjVNKbVU
	d3VIU5uDByd+c9febG34Wv+y0K0ol5uEe+TopzBBuK+pOmWz81kTyNBwNDS8EHzQcjIeehRW/tt8a
	t/3R06B0qKqubkQ1QOYQ5fqO0WPHrkoxVeTI1CJ/GuMYJeWqjrtpVySg8llSZlESqJKs8WfluXy95
	ljaMmM097VL2uHOZmFIwS2+w7WLVuOJ1eI6mY8rmpLW2kMEfqZSFGgB0gTVGp9+msUVUQvzQ9hXts
	C6LFBzEiUxgEEDdELfVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXeyR-0002dd-Fj; Mon, 03 Jun 2019 04:53:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXeyN-0002RD-7j
 for linux-rockchip@bombadil.infradead.org; Mon, 03 Jun 2019 04:53:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b/qy0C/+qIVS4p/9C8coL0gczc7xGffHcCTpl84Pnik=; b=QD8+gPI9etENy06tSbFrb7SFsA
 eM65r0ttgw/zlEnmUZW9PDf9aXuqSvwlPYDXVzMw/hPkxg7VXFieEycC+KCHLHRPWnPegLVA5rUp7
 cMF8I/Y+tPXeBI9zVpuNHKRQdtMovFIcl9JHRfa5GEV3MYADeVkwjFiiosoUp2Bh3xNO86RVdaNZF
 akHKyi1CtEjc1R7MKhZgKGp1GFvFRlVapetIiTgObJx2P+8Ynyt3QgLtWJOLd/B6a6kiN6mg2B9f3
 B1gWhNGa1Png5pUCg0TM1gGCknBbN1Q4RhY/uhjo5t46dU/BmJcnsw2VvvJTDyZfbqa4K9Pnhi+b1
 FPGPaZXA==;
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXefl-0000yC-R0
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 04:34:15 +0000
Received: by mail-pg1-x541.google.com with SMTP id w34so7495658pga.12
 for <linux-rockchip@lists.infradead.org>; Sun, 02 Jun 2019 21:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b/qy0C/+qIVS4p/9C8coL0gczc7xGffHcCTpl84Pnik=;
 b=W0HFUAGEBlitH2BpXUVE7tLd15Ng5l2TZqjITWduI3EGWRg3JKMe0MjJis9TBvMp02
 4awA3xZDrtX56bGXOH5ZQ3oEimCGvzikfQPZANnHJau89l5kDDX0gPAAvlPieYi8kSIP
 TwDl7/UAUwCplFr2sy8k4qBf+wMfpuYAoO41w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b/qy0C/+qIVS4p/9C8coL0gczc7xGffHcCTpl84Pnik=;
 b=VWIJPNMG1JO/hcTENGAuKD19kvw9SvqjOrihrfRIwfX85Pv/4z/9XrcTNVqVTBasYA
 t2gR4LgZyJayzTetBXLsTdYLtTyYhtZA6NiC4sN5qd2yxcKzG5Bo9fFzp3ZkpBFEkVP4
 UOb1ad1zc17gSJ5bGWEBvWAoU9NS1rGV7/RT6hhtgwuC2qpwGh8IGnaCVsrM63VEv9tR
 9GpMjyIC7Mx2NOAgg0G/ArgOT5OOTWtAyUPMosoDgmQedMJTJo8gZKYLFPFEuO0JTkhM
 N5UDcWhM0Cqmac+6+tEjYweiBJTwQj8KmCWP3+W5CBFwncD2XIbYeYIX+2p1ya2L+Ef8
 CmCA==
X-Gm-Message-State: APjAAAVxxTCylXlEWoFzfMkFRU48wN1lvFj9rpI4TlxNTssyHO3QRf5i
 wStnZWztXMkcipQSlMKdIa0hxw==
X-Google-Smtp-Source: APXvYqyNg+8OlIDr5Hr5hFnNgwXQAuI+ahu2SvEr6XII+hIpaqZoSlyKPzFn5UBfI4WiO1Ahj/0G/w==
X-Received: by 2002:a62:6145:: with SMTP id v66mr28539820pfb.144.1559536451549; 
 Sun, 02 Jun 2019 21:34:11 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id e20sm11842630pfi.35.2019.06.02.21.34.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 21:34:10 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 7/7] ARM: dts: rockchip: Specify HDMI node to sound card node
Date: Mon,  3 Jun 2019 12:32:51 +0800
Message-Id: <20190603043251.226549-8-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190603043251.226549-1-cychiang@chromium.org>
References: <20190603043251.226549-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_053413_969597_B4745FE3 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Sound card needs HDMI node in order to register jack callback on HDMI
notifier.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi b/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi
index 445270aa136e..096ba4e96db2 100644
--- a/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi
@@ -14,6 +14,7 @@
 		rockchip,model = "VEYRON-I2S";
 		rockchip,i2s-controller = <&i2s>;
 		rockchip,audio-codec = <&max98090>;
+		rockchip,hdmi= <&hdmi>;
 		rockchip,hp-det-gpios = <&gpio6 RK_PA5 GPIO_ACTIVE_HIGH>;
 		rockchip,mic-det-gpios = <&gpio6 RK_PB3 GPIO_ACTIVE_LOW>;
 		rockchip,headset-codec = <&headsetcodec>;
-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
