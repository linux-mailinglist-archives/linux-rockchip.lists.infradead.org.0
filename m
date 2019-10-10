Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDF8D3372
	for <lists+linux-rockchip@lfdr.de>; Thu, 10 Oct 2019 23:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9ZrtNWxDLMSLObnqvQsWQz+GmG1ZRwlmc2N5FQzshM=; b=g4CUx+jKSC8H5t
	MsuherQIe184ih9FgWjJ+uF3XU3VYZShJ9kUw2Aqp4RrrwKVigy3Z+jg5Ts8S1esTXl19bYuS+C/D
	QD8hEBEj8GlXjoDzSSDLYjN4wymKzMpJ51ovj2Vkp2qlMVuK61bdD0/PXnMChYAa9CyWHRG8FJVpy
	7Kruoxw3SjgQoJTDGvrNhQp+RHkMAqiniQG9jRBXVaIRQVIFld3Vh7vS4SGAE6MCMxd/eCbhNNH7P
	g/OdK6BrQm185YQCmcRWayrbhnRecL5nNC2tB3hR/c5SUXTa46GM8zNLecsfyWREKCQ03wn4LruHW
	lj/taQiKFlYiZbq1Vs4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIg1k-0001TX-AZ; Thu, 10 Oct 2019 21:31:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIg1Y-0001DC-Uc; Thu, 10 Oct 2019 21:31:06 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iIg1S-0007Bv-HL; Thu, 10 Oct 2019 23:30:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vivek Unune <npcomplete13@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix usb-c on Hugsun X99 TV Box
Date: Thu, 10 Oct 2019 23:30:57 +0200
Message-ID: <1594003.l3tWjkc0Ga@phil>
In-Reply-To: <20190929032230.24628-1-npcomplete13@gmail.com>
References: <20190929032230.24628-1-npcomplete13@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_143105_140144_C4FCC57A 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, vicencb@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, akash@openedev.com,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Sonntag, 29. September 2019, 05:22:30 CEST schrieb Vivek Unune:
> Fix usb-c on X99 TV Box. Tested with armbian w/ kernel 5.3
> 
> Signed-off-by: Vivek Unune <npcomplete13@gmail.com>

applied as fix for 5.4

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
