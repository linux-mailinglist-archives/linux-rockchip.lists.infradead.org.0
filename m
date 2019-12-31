Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C0412D9E1
	for <lists+linux-rockchip@lfdr.de>; Tue, 31 Dec 2019 16:33:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vKtKiQ3/z8HeIMYFDTz86NuQ2wlNtwuc/I7WyspRHvw=; b=ay/zjsI1NS3U0W
	eb/xa1NyaHDJPEXgiudOI1y8vtURTfyoFZgY0i+nglbK9MQFSIWCs1nPN+RJwCHsoemmi9LdZTpgO
	RTU0JIRdhtD7Duyb0uMDuJKZDhCrnC2XeRh99+OZwQmCQC8T5kD1dh+kWDr86Msiv6lXTVnKUi+oL
	MO1v5PGIhZJy/hofVWyItNB5fkoTBFYJOrNl/35AeN1BTvoXmqmFhWv93f4RJpqJ+txHsnsJmUj5N
	Rn7fR8Ban/A365fGtWIoOoyMLPUqN1OklcJ2C4007X38xRLqWsFkP484538rdOyi2Cv2noWYtuS51
	ZruCqdOqlmSmn9ARuXsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imJWr-0006Hi-Dc; Tue, 31 Dec 2019 15:33:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imJWo-0006H1-L6; Tue, 31 Dec 2019 15:33:51 +0000
Received: from [185.109.153.2] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1imJWj-0004i6-Eg; Tue, 31 Dec 2019 16:33:45 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 10/11] arm64: dts: rockchip: Add PX30 DSI DPHY
Date: Tue, 31 Dec 2019 13:14:02 +0100
Message-ID: <10740878.zWD4iEhqxt@phil>
In-Reply-To: <1796464.bE5sXyoQCg@phil>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
 <20191224143900.23567-11-miquel.raynal@bootlin.com> <1796464.bE5sXyoQCg@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_073350_834741_0E0A4C46 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: 4.6 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [185.109.153.2 listed in zen.spamhaus.org]
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 31. Dezember 2019, 12:56:14 CET schrieb Heiko Stuebner:
> Am Dienstag, 24. Dezember 2019, 15:38:59 CET schrieb Miquel Raynal:
> > Add the PHY which outputs MIPI DSI and LVDS.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> 
> applied for 5.6 (picked early due to it being shared between lvds and dsi)

and I've just added the VO powerdomain to the dsi-dphy node.

While the TRM is not really forthcoming in telling me if the dphy needs
the power-domain as well, the vendor kernel does, so we should probably
just follow their example ;-) .


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
