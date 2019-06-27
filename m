Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC255582C3
	for <lists+linux-rockchip@lfdr.de>; Thu, 27 Jun 2019 14:43:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LrqhOMbFTSw/dfW1WTQ8nobbzVbt229uMN+02U9qaiQ=; b=faG6lxcBDjf+FV
	X2/LhMsSxyHkJDS0Bc2CWh1HupZJ6hJ7kzXPAryfkp5yM2jEHM+Nsq9xDmDr9dDqngj6C94f7X560
	w/pUuRZqc5CyNZyZMCr30CgDrBB5sXrYxE3HJ0DtOLy3nap4nBaEg3IsftD11e4YvppFNqHb3l+Aj
	tyXzNu8TsiRAzXyXVLMaeBDwlXcTTAWtfaVg9ew4AN2Thhy3NOJVz7g6W1gtp2/av/4jGAnqhec7M
	M1sZH7t+WDlDxsiHMrbKxJD+ii3UiEMt65INbSFUGWySnOfJp34KDDYXHilPH+TSjXzgBvjFvUfyO
	XBr6EwfHTqd9Z0+6lMeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgTjz-0008As-Kj; Thu, 27 Jun 2019 12:43:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgTjv-0008AP-SU; Thu, 27 Jun 2019 12:43:01 +0000
Received: from wf0413.dip.tu-dresden.de ([141.76.181.157] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1hgTjj-0007wm-2p; Thu, 27 Jun 2019 14:42:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Update DWC3 modules on RK3399 SoCs
Date: Thu, 27 Jun 2019 14:42:46 +0200
Message-ID: <1960228.jn0vabPeDx@phil>
In-Reply-To: <20190613162745.12195-1-enric.balletbo@collabora.com>
References: <20190613162745.12195-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_054300_236822_FCE04C29 
X-CRM114-Status: GOOD (  12.52  )
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
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Tony Xie <tony.xie@rock-chips.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Randy Li <ayaka@soulik.info>, linux-kernel@vger.kernel.org,
 Vicente Bergas <vicencb@gmail.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 13. Juni 2019, 18:27:45 CEST schrieb Enric Balletbo i Serra:
> As per binding documentation [1], the DWC3 core should have the "ref",
> "bus_early" and "suspend" clocks. As explained in the binding, those
> clocks are required for new platforms but not for existing platforms
> before commit fe8abf332b8f ("usb: dwc3: support clocks and resets for
> DWC3 core").
> 
> However, as those clocks are really treated as required, this ends with
> having some annoying messages when the "rockchip,rk3399-dwc3" is used:
> 
> [    1.724107] dwc3 fe800000.dwc3: Failed to get clk 'ref': -2
> [    1.731893] dwc3 fe900000.dwc3: Failed to get clk 'ref': -2
> [    2.495937] dwc3 fe800000.dwc3: Failed to get clk 'ref': -2
> [    2.647239] dwc3 fe900000.dwc3: Failed to get clk 'ref': -2
> 
> In order to remove those annoying messages, update the DWC3 hardware
> module node and add all the required clocks. With this change, both, the
> glue node and the DWC3 core node, have the clocks defined, but that's
> not really a problem and there isn't a side effect on do this. So, we
> can get rid of the annoying get clk error messages.
> 
> [1] Documentation/devicetree/bindings/usb/dwc3.txt
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

applied for 5.3

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
