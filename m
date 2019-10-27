Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E519E64DD
	for <lists+linux-rockchip@lfdr.de>; Sun, 27 Oct 2019 19:23:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNHhSUdF7zp3Lz+v4T319uH1FIShoiPELVf9sAKJKEQ=; b=Bm4Mcj3sg9q3bW
	UpHkjyzanXfLwpSf45zrLEAzFyj6+9Giv4FOrkMBpD6uLYCyErjOZ+NxEFnN4qCxg9mo1XC5tKs3w
	m3CefWr0bHcB4B3M3Cet45MtmjD5wwsZQf9qm1U3GbPe9uLZSsnckB1qGBfu1u/BNKtrvtp3aUbHp
	uHNiCwtIvcdbC6ucvnfConsSLqYSLYRR/Ayg+DGFR6hZWxCDfOBdX8VRQpf4m5WiMIW39tweRysmW
	1SSYm9cZmwHHK4ejqjglBLb9f+AcDc6oa+MPGUU+tYvFNBnFUuJKIfL7mBLG7ijDv3yf/81XiQjl7
	ug8RVuvAk/ZXphoe6Btw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOnBo-0001oL-6Y; Sun, 27 Oct 2019 18:22:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOnBW-0001Yt-TB; Sun, 27 Oct 2019 18:22:40 +0000
Received: from [46.218.74.72] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iOnBV-0008Hx-48; Sun, 27 Oct 2019 19:22:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: remove px30 default optee node
Date: Sun, 27 Oct 2019 19:22:36 +0100
Message-ID: <3461884.ytE3v2kofO@phil>
In-Reply-To: <20191023224409.3550-1-heiko@sntech.de>
References: <20191023224409.3550-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_112239_112436_1D362F5A 
X-CRM114-Status: UNSURE (   9.59  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 24. Oktober 2019, 00:44:09 CET schrieb Heiko Stuebner:
> Having a default optee node in a soc devicetree is not really good.
> For one there is no guarantee that any tee got loaded and there's even
> the possibility that a completely different TEE got loaded.
> 
> OP-Tee however will insert relevant nodes to the devicetree (firmware
> +reserved memory sections) during its own startup, so there really is
> no need to provide a default node.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

applied for 5.5



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
