Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E191C458E3
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 11:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=awUgEOpywF4Q5TuvowfN57Rr4cNGfTlTKq9jwTZrWto=; b=fBczZj+l7hnGrH
	Qd3nelKOndzw7Huw+hVtwbkbJtMNJz8gdpMlbkHU4wC4OhkY657gdksjso0fCfebnJiAcdIKeRcIB
	yjyk5K+mGm/ZTY3/PptDOntnbQZnUMuzWUaJRr4nnm1bvGm+0fgMibqUzcFmybIIThGBji+a4BJJj
	YZL4n/PVaPg69VuzYTvjHggxOlYfv3EkBYTFqKjeGXtgrCOOW+KECGdOQ88mxRmzEuKyV6yM45bkM
	XfAGCWITu3BalwEkWurNYpEHBiemdHJ03cEYPRxYmRncm4560AQAHg6CKtJLxG0gRDWBrQFv+hQAq
	Y4QiuB+N5mWsNu9mjlJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbifA-0001I2-9u; Fri, 14 Jun 2019 09:38:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbies-0000zw-0f; Fri, 14 Jun 2019 09:38:07 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbiep-00049y-Ms; Fri, 14 Jun 2019 11:38:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v2] ARM: dts: rockchip: Configure BT_HOST_WAKE as wake-up
 signal on veyron
Date: Fri, 14 Jun 2019 11:38:03 +0200
Message-ID: <8216847.YA7l6QMt1s@phil>
In-Reply-To: <20190610235144.34261-1-mka@chromium.org>
References: <20190610235144.34261-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_023806_204686_AAEEFBE8 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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
 Brian Norris <briannorris@chromium.org>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 11. Juni 2019, 01:51:44 CEST schrieb Matthias Kaehlcke:
> From: Doug Anderson <dianders@chromium.org>
> 
> This enables wake up on Bluetooth activity when the device is
> suspended. The BT_HOST_WAKE signal is only connected on devices
> with BT module that are connected through UART.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>

applied for 5.3

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
