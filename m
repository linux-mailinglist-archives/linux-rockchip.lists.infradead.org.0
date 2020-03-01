Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E925174A6E
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Mar 2020 01:25:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCk284Jr0gK7JT/J0yucypW/iOcK5kCKnVR3I30VpNo=; b=hHgKkKdVVq7Hmp
	4DVzsaWEFLFzgHV6C7eHvrfAI9xCknCJAZviK5ULz9gNYdYOHM3SUure6FvxKhD+uW67pqXdN2t4a
	pXSpCbByVAH8aYjhjVvXKbPebaQ2zQJSiO8abuHooyRST7BE4EtzXArhs6vuO1alli1BorMtmwmIQ
	gpBlnrJfgqNjLjBIpATKIEkAJUsjNRw5FFMr2kxS93HaNuux86PqMpHsz7BL9uzV0VfVmqRMJKdeM
	loqOpPcSXg0AM2bajEx0Oj0xPLF5Evy20o6hk6l3HF/414K0zgCuf+le10El3kUatIDg9nVvngr6f
	LVBD+9jf2T/PS7t2ZtDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8CQO-0004fu-PU; Sun, 01 Mar 2020 00:25:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8CQC-0004VH-5t; Sun, 01 Mar 2020 00:25:29 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j8CQ1-0004xy-6B; Sun, 01 Mar 2020 01:25:17 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Carlos de Paula <me@carlosedp.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add txpbl node for RK3399/RK3328
Date: Sun, 01 Mar 2020 01:25:16 +0100
Message-ID: <6132615.msM8OCcsVu@phil>
In-Reply-To: <20200218221040.10955-1-me@carlosedp.com>
References: <20200218221040.10955-1-me@carlosedp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_162528_369284_4ABC103E 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: jose.abreu@synopsys.com, Mark Rutland <mark.rutland@arm.com>,
 Jonas Karlman <jonas@kwiboo.se>, Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Peter Geis <pgwipeout@gmail.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Johan Jonker <jbx6244@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Robin Murphy <robin.murphy@arm.com>, papadakospan@gmail.com,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 18. Februar 2020, 23:10:37 CET schrieb Carlos de Paula:
> Some rockchip SoCs like the RK3399 and RK3328 exhibit an issue
> where tx checksumming does not work with packets larger than 1498.
> 
> The default Programmable Buffer Length for TX in these GMAC's is
> not suitable for MTUs higher than 1498. The workaround is to disable
> TX offloading with 'ethtool -K eth0 tx off rx off' causing performance
> impacts as it disables hardware checksumming.
> 
> This patch sets snps,txpbl to 0x4 which is a safe number tested ok for
> the most popular MTU value of 1500.
> 
> For reference, see https://lkml.org/lkml/2019/4/1/1382.
> 
> Signed-off-by: Carlos de Paula <me@carlosedp.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
