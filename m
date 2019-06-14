Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A2045C1D
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 14:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Gi+aP6R6GnnQ5Q3YYeOKzjPv4hbuDeW2kLp8f1ztUU=; b=KbvK+t0weYHddi
	zxOakuFeK5QSoKftIegGL58rJA4oaT8C8iJdLxcbCdUgZ/TAI6BYXfkFnkZIvV2ZnhDjC1Br/aMTJ
	KyB4k47802wtp2KVdHs0yFye5p9g8xpug0rfuMrRfdJslGyd0Ac5+d5M8U4XQZmxAE/3YJwhq23Ru
	Rcg1+FI3GDEKD8bKL6ODz0Q7+rFco3UqpftN9phTQaX6jwJXWR0PPWYSLnX4s7inWPCiMMkpm/Rmq
	CXfwaq43lZ3GRaT4GGz4QKhQHV7fzSE/xMFTBrsiUy1zPO4p76zms70nT2uroIoMoo+UC1XOD3z85
	qKPOKfua9NSA6r+ekoBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbkxI-0008Nm-VK; Fri, 14 Jun 2019 12:05:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbkwy-0006vv-OX; Fri, 14 Jun 2019 12:04:57 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbkwr-0004uz-7x; Fri, 14 Jun 2019 14:04:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: Re: [PATCH] drm/rockchip: dw_hdmi: add basic rk3228 support
Date: Fri, 14 Jun 2019 14:04:48 +0200
Message-ID: <1679832.6k0ngRgKtg@phil>
In-Reply-To: <20190522224631.25164-1-justin.swartz@risingedge.co.za>
References: <20190522224631.25164-1-justin.swartz@risingedge.co.za>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_050456_942425_524042E3 
X-CRM114-Status: GOOD (  10.12  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 23. Mai 2019, 00:46:29 CEST schrieb Justin Swartz:
> Like the RK3328, RK322x SoCs offer a Synopsis DesignWare HDMI transmitter
> and an Innosilicon HDMI PHY.
> 
> Add a new dw_hdmi_plat_data struct, rk3228_hdmi_drv_data.
> Assign a set of mostly generic rk3228_hdmi_phy_ops functions.
> Add dw_hdmi_rk3228_setup_hpd() to enable the HDMI HPD and DDC lines.
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>

applied to drm-misc-next

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
