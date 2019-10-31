Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F932EADE1
	for <lists+linux-rockchip@lfdr.de>; Thu, 31 Oct 2019 11:52:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Vv+D5CLu0SwcZR4jEE0dr1J0eHzWvN2rqb6BLrJILg=; b=qTb/soKVtAstaz
	nyuw9iXiLRFl4HJAYvSWJRYnUP2/HyoTX8noByFwD991LzQU+SaNVtz26NpN4otMyV8Be9AZKVeKI
	jY0jPJZthdRN7CNqm4fmX8EdAN4YwgBqMhB71KrpvdqsLs5PKYOMtSs2qPUVD4tXL50q5JscvGQin
	5SxRBhXF9JxqA1tb4gxcGBcvlp2NJlK7HuORCmtv4ziYqp3ENOF7tjV5YBo5Ar+es14LaXvBlwwUl
	0rW5GvJPufn5EG5HwS80YMNzV0q70xG8k0KdBAQyk0ESkz1fnU6PiwbY2o02r/UShn5huJVDMyzeE
	7uOwA2YQBv3cGRCC/dFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ841-00081X-7c; Thu, 31 Oct 2019 10:52:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ83n-0007sK-Dn; Thu, 31 Oct 2019 10:52:12 +0000
Received: from dhcp-159-84-61-180.univ-lyon2.fr ([159.84.61.180]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iQ83B-0004dd-3J; Thu, 31 Oct 2019 11:51:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH v9 5/6] ARM: dts: rockchip: Add HDMI support to
 rk3288-veyron-analog-audio
Date: Thu, 31 Oct 2019 11:51:31 +0100
Message-ID: <6246654.jvjegRjDd5@phil>
In-Reply-To: <20191028071930.145899-6-cychiang@chromium.org>
References: <20191028071930.145899-1-cychiang@chromium.org>
 <20191028071930.145899-6-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_035211_611584_22E5B261 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 devicetree@vger.kernel.org, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, Liam Girdwood <lgirdwood@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, dianders@chromium.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 28. Oktober 2019, 08:19:29 CET schrieb Cheng-Yi Chiang:
> All boards using rk3288-veyron-analog-audio.dtsi have HDMI audio.
> Specify the support of HDMI audio on machine driver using
> rockchip,hdmi-codec property so machine driver creates HDMI audio device.
> 
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>

applied for 5.5

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
