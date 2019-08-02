Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 308C2802DB
	for <lists+linux-rockchip@lfdr.de>; Sat,  3 Aug 2019 00:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LRvH/i3YaGnkrOvqlv0lrompwp1XDN7HE3elaIHiu8=; b=ai5PKntGEhaxd7
	h8lCvYZrfgMgxvzjTszX9QroyULyDCO+C11VS4jKEpVYesECgocl0W8TpAPqrYPUz6XYXX909iXhn
	gPDJ3My77IRaKL3+DmQ0ZRK3sJuA0oeYDNhBGIQH8ijhD2MEVOPGNKDDVrrBuuhFANRazddyUbt1O
	3XV2wx/O1onOE79igXG+eTHraEa0hB738Lkl/OSwTbBn2IK+av28uYijw0psTFdlqcLFT45JePcc1
	Mq374exEEeYWnKeNIifixRSDtynRcgDG3aCcN28SjdMbtk65lZJYcw6HPsroWovp+0P7kzRfVvaIU
	1NMF71Jo0t8HXMkAz1xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htgA2-0006jm-1Y; Fri, 02 Aug 2019 22:36:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htg9l-0006Xv-Tn; Fri, 02 Aug 2019 22:36:15 +0000
Received: from p508fd160.dip0.t-ipconnect.de ([80.143.209.96]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1htg9j-0005N8-FP; Sat, 03 Aug 2019 00:36:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v2] ARM: dts: rockchip: A few fixes for veyron-{fievel,
 tiger}
Date: Sat, 03 Aug 2019 00:36:10 +0200
Message-ID: <3131503.0ZxQz3Vuye@phil>
In-Reply-To: <20190731151527.122002-1-mka@chromium.org>
References: <20190731151527.122002-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_153614_106916_E659C7A6 
X-CRM114-Status: GOOD (  12.63  )
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
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 31. Juli 2019, 17:15:27 CEST schrieb Matthias Kaehlcke:
> Fix/improve a few things for veyron fievel/tiger:
> 
> - move 'vccsys' regulator from tiger to fievel, both boards
>   have it (and tiger includes the fievel .dtsi)
> - move 'ext_gmac' node below regulators
> - fix GPIO ids of vcc5_host1 and vcc5_host2 regulators
> - remove reset configuration from 'gmac' node, this is already done
>   in rk3288.dtsi
> - fixed style issues of some multi-line comments
> - switch 'vcc18_lcdt', 'vdd10_lcd' and 'vcc33_ccd' regulators off
>   during suspend
> - no pull-up on the Bluetooth wake-up pin, there is an external
>   pull-up. The signal is active low, add the 'bt_host_wake_l'
>   pinctrl config
> - move BC 1.2 pins up in the pinctrl config to keep 'wake only' pins
>   separate
> - add BC 1.2 pins to sleep config
> 
> Fixes: 0067692b662e ("ARM: dts: rockchip: add veyron-fievel board")
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>

applied for 5.4

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
