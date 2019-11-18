Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F73FFC97
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 01:54:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3hG7GCfnSuZ7wWAtK0uIW8hV1ZDMOL8BxREvJLuu/KY=; b=R5Dnq4T2H8Y8nv
	UcxmegYzLLvzIgR0U3Po/7aXCNUI693Ix4JmS0C2g+tD4FlNDDGDX8xJbWNGS6AmLF0j55AVyPCFj
	+9SHZvZq/h6DXqjmqQnIhEYRPpIAhy467a4CFxXWyK/pNaX6zUggk78lbddVObcU4ySZkW+JNs5rC
	O5ZVktG/+k8PFa9DRTrMz9QMbCFzBAjhWhVuLGBEpc5O/TDrB19lY4r78o5CYVxPBx5QAlTLkb10K
	MvEHirNhoFy5q3R9VUT8eaRj1LcfC3Vt5vyQnqgd2MV2TJxjY+AAsdpSLHONTYxrN6MlJXu6xkX3s
	gUq0ODVN5yvkk4Mkd9Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWVJE-0004f3-H5; Mon, 18 Nov 2019 00:54:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWVJB-0004ee-TX; Mon, 18 Nov 2019 00:54:27 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iWVJA-0003g3-FE; Mon, 18 Nov 2019 01:54:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Improve nanopi4 PCIe
Date: Mon, 18 Nov 2019 01:54:23 +0100
Message-ID: <2458811.002snvvaTN@phil>
In-Reply-To: <a04a17f4b9b12e8698c76b34e7ca22f0c81845ce.1573908195.git.robin.murphy@arm.com>
References: <a04a17f4b9b12e8698c76b34e7ca22f0c81845ce.1573908195.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_165426_103754_4A5ACAB7 
X-CRM114-Status: GOOD (  11.56  )
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Samstag, 16. November 2019, 13:47:20 CET schrieb Robin Murphy:
> Expand the power tree description with the 0V9 and 1V8 supplies to the
> RK3399 PCIe block. The NanoPis M4 and NEO4 just route 2 lanes to the
> user expansion pins, so there's not much more to say at the board level
> for them; NanoPC-T4 has a standard M.2 connector so we can at least
> claim the 3.3V supply to that too.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

applied with the same resolved conflict regarding the i2s0 phandle

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
