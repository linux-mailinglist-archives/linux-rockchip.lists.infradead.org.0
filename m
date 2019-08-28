Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C77A094C
	for <lists+linux-rockchip@lfdr.de>; Wed, 28 Aug 2019 20:15:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDU4wJnIKiYBRCTlTfGI1n12A0stZI1fxL2cuN7cUic=; b=PEXLmqNEFjGGKg
	J5YlstpgEnjjBkubuEEt5mLeh6yv04RTJtSleuHwS8UdnrD0ijeOwBZi2xstuUUgKKZ9PEQRu2PGP
	JGqXW8fDvYJUIM4g7UMKVYbqu+tuI/0HBd7jeSisn/gUzfW5bXdV01PABV3CTt6z3RKTec6PPfgbU
	zx9j1IfBcEUkM28D2odtYAihd9j7Q2CdYPPgenYBV9dggh7MAemcDKDDV9u9QHtjAVKZCySOigBvN
	LCm2d3gu1D5+kwzieeEXhZZ+jjZ/iy+PwmYAHsLd+SjETzLJ5AxJDhgF8jDAuWdJsaJlgTHGUZC43
	KuxyjjJLZa14jkmWefrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32Tq-0007db-Du; Wed, 28 Aug 2019 18:15:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i32Tn-0007d1-PB; Wed, 28 Aug 2019 18:15:37 +0000
Received: from [104.132.1.107] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1i32TX-0000Wu-Cc; Wed, 28 Aug 2019 20:15:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] PCI: rockchip: Properly handle optional regulators
Date: Wed, 28 Aug 2019 20:15:15 +0200
Message-ID: <1801971.F4Ds6vmZ8I@phil>
In-Reply-To: <20190828150737.30285-1-thierry.reding@gmail.com>
References: <20190828150737.30285-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_111535_965817_6CDC2444 
X-CRM114-Status: GOOD (  11.83  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Vidya Sagar <vidyas@nvidia.com>,
 linux-rockchip@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 28. August 2019, 17:07:37 CEST schrieb Thierry Reding:
> From: Thierry Reding <treding@nvidia.com>
> 
> regulator_get_optional() can fail for a number of reasons besides probe
> deferral. It can for example return -ENOMEM if it runs out of memory as
> it tries to allocate data structures. Propagating only -EPROBE_DEFER is
> problematic because it results in these legitimately fatal errors being
> treated as "regulator not specified in DT".
> 
> What we really want is to ignore the optional regulators only if they
> have not been specified in DT. regulator_get_optional() returns -ENODEV
> in this case, so that's the special case that we need to handle. So we
> propagate all errors, except -ENODEV, so that real failures will still
> cause the driver to fail probe.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>

on a rk3399-gru-scarlet with no 12v regulator defined and pcie-wifi
keeping on working with this patch:

Tested-by: Heiko Stuebner <heiko@sntech.de>

Change itself also looks correct,

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Thanks for doing that cleanup
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
