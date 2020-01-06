Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72608131198
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Jan 2020 12:50:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDFwj68Gn+1pJvCwG7+0P/W59amVrMtyy9L2w8K3I+4=; b=YRCP7caCwcU4Wt
	0HwmDNTJggE5LYiWQRQ0RQPaFDDX4SFEDssDalqyZJdQJxUw71+tjDuJVoNQQrcKPOw78sRJyfJzU
	0bAtrYFm2afCU6+FHd/8oliTy/DRVYuy9cRyoVuQb6JB/c4VpsiX+z9MoE4AMNvRioBs9rQgL+Nyt
	qXEK/oNIVqY/GfvXCrNUNE0PbvYdhqIslKKnoHS7hnJ6lGfo3beJ09Ap1/ZzJO82p1hNN6APZiqeU
	VuHDa+jPII3VZG7hyTpIlQrQ4UGY1DBvWy1UbVHlULUoeM9V1iS4L7kBeBKNVPm+XmRUzRswKXkse
	Ff1G0xqSW4UAwL+gTWZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioQu5-00070k-BF; Mon, 06 Jan 2020 11:50:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioQu1-0006zw-Ts; Mon, 06 Jan 2020 11:50:35 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ioQtw-0004hK-5T; Mon, 06 Jan 2020 12:50:28 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 11/11] arm64: dts: rockchip: Add PX30 LVDS
Date: Mon, 06 Jan 2020 12:50:27 +0100
Message-ID: <2384472.TJ9hiSgVgr@phil>
In-Reply-To: <20191224143900.23567-12-miquel.raynal@bootlin.com>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
 <20191224143900.23567-12-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_035034_111987_2DFF5F30 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

Am Dienstag, 24. Dezember 2019, 15:39:00 CET schrieb Miquel Raynal:
> Describe LVDS IP. Add the CRTC and LVDS relevant endpoints so they can
> be linked together.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

> +
> +			vopb_out_lvds: endpoint@0 {
> +				reg = <0>;
> +				remote-endpoint = <&lvds_vopb_in>;
> +			};

> +
> +			vopl_out_lvds: endpoint@0 {
> +				reg = <0>;
> +				remote-endpoint = <&lvds_vopl_in>;
> +			};

applied for 5.6, with the endpoints becoming @1 after the dsi

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
