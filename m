Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7A5D7F66
	for <lists+linux-rockchip@lfdr.de>; Tue, 15 Oct 2019 20:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYSNMQO/LOMw/0+LKTuNbiHa89PXatiilsiX1diZaYw=; b=b0OMK7dzxsqerl
	HCpn5Sr7+a+1Xs58eeZrcJ/KlQZtiVf9kzSGp9PCxbjnfO1qx55IocmvkmXMKrtccXNPn0ilj3EAE
	+BygULdwN8c6Y7hBmWKiXwX2icEp0A9LoX4w1ohS9H5z64XKDsz9gTuuxNDhm70qXSyLpAkgJfAlv
	Fat8sykojD2SX8j0LIvI1Q6XM6Yzbr1pK+1N3l+IjP/kUihnF6T/e5aN6pCpUPkm8CpuyLetRrQxQ
	Pn9DJ7cTu4cbFjMm0ibXh6he+pYUb4+RyHAMgZk+MoFgPer7SUHXM/TiO4L2gljMm9HyiF9mmsiVI
	cWZQRtvpBBSx8xM7emzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKRx8-0007Oy-NR; Tue, 15 Oct 2019 18:53:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKRx5-0007Od-R5
 for linux-rockchip@lists.infradead.org; Tue, 15 Oct 2019 18:53:49 +0000
Received: from remote.shanghaihotelholland.com ([46.44.148.63]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iKRx0-0007gB-1p; Tue, 15 Oct 2019 20:53:42 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH] iommu: rockchip: Free domain on .domain_free
Date: Tue, 15 Oct 2019 20:53:36 +0200
Message-ID: <2628046.Yh23E8A2S3@phil>
In-Reply-To: <20191002172923.22430-1-ezequiel@collabora.com>
References: <20191002172923.22430-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_115348_029608_1343FC0C 
X-CRM114-Status: UNSURE (   8.86  )
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
Cc: linux-rockchip@lists.infradead.org, Joerg Roedel <joro@8bytes.org>,
 kernel@collabora.com, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 2. Oktober 2019, 19:29:23 CEST schrieb Ezequiel Garcia:
> IOMMU domain resource life is well-defined, managed
> by .domain_alloc and .domain_free.
> 
> Therefore, domain-specific resources shouldn't be tied to
> the device life, but instead to its domain.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
