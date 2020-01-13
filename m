Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3F2138E55
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 Jan 2020 10:57:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edeBb0kc8mUEA/9m5z9234vxCLMNWKamd9WGvDV5PRU=; b=sfnvvXattojTzg
	hPwstSUeQopZsEl5h/d4gF0iA+OtBYDuQqG3bcuBX1+X3dLoCrlbbg4FnzfdTyaXSbde2iVk6iHdp
	9f6Daiu/VT3hlX5iPhIkt/oAJ+fE3SsiikF5ryUXfuoLVLZ7YO/WPgtZ5ml5vPVrTt1PbnjAfMeRU
	blfQ+eT5+3YqFMSldMkpophBPsPxc1cKs9EeERB9u61QmSMt29CaMisQlETeIiBGsWCRUBYQGzJKe
	T9cv6Fd4HhnsYkvvCYL8C1EEfJ/qXKe1NR4xwF7tA13CgG7k4upojeVGuwLFKRnif6AsNoK9qSZyb
	7LtES/Ifa0MhRdM8OXow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwTZ-0007nL-SG; Mon, 13 Jan 2020 09:57:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwTM-0007dP-DE; Mon, 13 Jan 2020 09:57:25 +0000
Received: from wf0253.dip.tu-dresden.de ([141.76.180.253] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1iqwTL-0002BQ-3R; Mon, 13 Jan 2020 10:57:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add GPU cooling device for RK3399
Date: Mon, 13 Jan 2020 10:57:22 +0100
Message-ID: <2721205.SfLTEEbdde@phil>
In-Reply-To: <cb905e17526d846d6d35fb86fbd3c8ba4af4cdaf.1574974673.git.robin.murphy@arm.com>
References: <cb905e17526d846d6d35fb86fbd3c8ba4af4cdaf.1574974673.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_015724_596102_5E0850B1 
X-CRM114-Status: GOOD (  10.04  )
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

Am Donnerstag, 28. November 2019, 21:59:27 CET schrieb Robin Murphy:
> As for RK3288, now that we have a binding for the GPU we can
> hook up the missing cooling device for the thermal zone.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

applied for 5.6
(and already in arm-soc)

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
