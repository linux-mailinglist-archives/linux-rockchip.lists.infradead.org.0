Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB05515B396
	for <lists+linux-rockchip@lfdr.de>; Wed, 12 Feb 2020 23:25:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRULkFKdZ0LjaMYHSKMz2i+3tsSxdZmUKPqbHpAYflQ=; b=BGednTwae4Zirw
	vMoOMCOjMA5kMycJ3Gy8r18ZthznBwvLFpiu9LaZAsIm82ODaXVUSH4pHQuCtVsandPEuphN2yknx
	F6RGSbiE1llh1jtQ3A7jlkM7dLGORIkG7ld5706qpqt61GMSu4NfVwIlmThGGgd1JIFOujIRY5K0d
	w778NWBm//U1W4080q8kNWBtu2MOikUQBJSUpLNNTfBCa0o/VIQjeHCUP4ct1WQ+4kccPT6om23zg
	jEonWR0YsrrpGaMGbwihH7FtliX/nZod4mH9zCGz8yQ5lXPo0SIESOmE1go5EfT6e7nX019Pgdhu2
	0bLGlCFjHb+p7q6MuBng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j20RR-0002mC-6N; Wed, 12 Feb 2020 22:25:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j20RM-0002FI-W7; Wed, 12 Feb 2020 22:25:06 +0000
Received: from p508fd8fe.dip0.t-ipconnect.de ([80.143.216.254]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j20RG-0001sh-MZ; Wed, 12 Feb 2020 23:24:58 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH] arm64: dts: rk3399: Remove extcon unit address and
 extcon-cells from Gru
Date: Wed, 12 Feb 2020 23:24:58 +0100
Message-ID: <3531662.p2XxmjTmOT@phil>
In-Reply-To: <20200207141324.3188898-1-enric.balletbo@collabora.com>
References: <20200207141324.3188898-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_142505_189495_2248A814 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 dafna.hirschfeld@collabora.com, Marcel Holtmann <marcel@holtmann.org>,
 Brian Norris <briannorris@chromium.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 7. Februar 2020, 15:13:24 CET schrieb Enric Balletbo i Serra:
> The cros-ec-extcon has no reg property so remove the unit address from
> the DT node to make DT compiler happy.
> 
> While here, remove the inexistent extcon-cells property from the extcon
> nodes.
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
