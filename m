Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECF3116447
	for <lists+linux-rockchip@lfdr.de>; Mon,  9 Dec 2019 01:03:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qz/LGWyqHIWgaiBrxzjdqADkdeeazMvh+mZLEYr66c=; b=p5RZTW+sL8K9El
	hd2M9Vo24VgoAlTvIhDDhz2npH7ko5ZB2k00MsLJoMxzuW3C15rYo/HEFhJ9nGqlxZNEDxyB/OrWu
	EutUrlp+QZKL84/G+vLPsJbFAXZCuUc3NG28Nq/31Uv5ioxzwb1caF6H+IAv/PrRKMCHmHjO1h9sk
	qIcSZBriEnjxxPIU7Bh73FPYmpQGtY3rLh6Vq4ryaftnMmLL4RYwlmAL9JCCLhIL/Z652YHrvzI0U
	tsHxeHNhC0aS4W8nml9/3/5je2qVsCM1umnlFVyFlw0pU6xZ5HUYxRMQaG+SH6nrzJBIKds2aI6Fr
	N3owzPY7aywBDmXLFCRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie6W9-0007Qx-BY; Mon, 09 Dec 2019 00:03:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie6W6-0007Q4-MG; Mon, 09 Dec 2019 00:03:12 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ie6Vy-0005fW-Tm; Mon, 09 Dec 2019 01:03:02 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Marcel Holtmann <marcel@holtmann.org>,
 Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/1] ARM: dts: rockchip: Add brcm bluetooth for
 rk3288-veyron
Date: Mon, 09 Dec 2019 01:03:00 +0100
Message-ID: <1788857.Va9C3Z3akr@diego>
In-Reply-To: <61639BAF-5AA0-4264-906F-E24E2A30088D@holtmann.org>
References: <20191127223909.253873-1-abhishekpandit@chromium.org>
 <20191127223909.253873-2-abhishekpandit@chromium.org>
 <61639BAF-5AA0-4264-906F-E24E2A30088D@holtmann.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_160310_875108_C6E5A5C9 
X-CRM114-Status: GOOD (  11.97  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, BlueZ <linux-bluetooth@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 9. Dezember 2019, 00:48:31 CET schrieb Marcel Holtmann:
> > This enables the Broadcom uart bluetooth driver on uart0 and gives it
> > ownership of its gpios. In order to use this, you must enable the
> > following kconfig options:
> > - CONFIG_BT_HCIUART_BCM
> > - CONFIG_SERIAL_DEV
> > 
> > This is applicable to rk3288-veyron series boards that use the bcm43540
> > wifi+bt chips.
> > 
> > As part of this change, also refactor the pinctrl across the various
> > boards. All the boards using broadcom bluetooth shouldn't touch the
> > bt_dev_wake pin.
> 
> so have these changes being merged?

not yet

Doug wanted to give a Reviewed-by, once the underlying bluetooth
changes got merged - not sure what the status is though.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
