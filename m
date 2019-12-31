Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C5812D87B
	for <lists+linux-rockchip@lfdr.de>; Tue, 31 Dec 2019 12:53:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FnuaSTcS94wdtBmeqzHDyusUx/qHPzEYRvDokKp3kQg=; b=MESXU+isOEoeCJ
	fuUuNXnfxaqt7IEEqlessaBb4mJHAFA7mwH1hdZVj9f7PzAxUbdPi8ZN6ZdyOJN0A0QKg+0/JplTc
	GzQ1XAkZPBzJWR6YvLBPH/ZhjaZZxmC4Nng1WGBxfKb4sgR1K+SoC+GChGv5U8S6CemGlkgLbBBhX
	7NU1Vmw16hajut6s/22IUwXQcR6gF3vXTFQTJh49rlMraxGjflPbOml8skAF7J9pM2niELakJI6n5
	HVriMWmvgt8rr3E0bmu1CeQrTDep2MrA0vqq8/JaqGLw0t1B8aQGc7txrReJjzbg/KZ3SP9bW3NX0
	8i6QFVcSmDs2iw+LV1Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imG5e-0000XW-OF; Tue, 31 Dec 2019 11:53:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imG4v-0008GJ-8g; Tue, 31 Dec 2019 11:52:50 +0000
Received: from [217.166.244.239] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1imG4r-0003rw-K3; Tue, 31 Dec 2019 12:52:45 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk3368-lion-haikou: remove
 identical &uart0 node
Date: Tue, 31 Dec 2019 12:47:36 +0100
Message-ID: <1957883.kUPM6Xjvq3@phil>
In-Reply-To: <20191228074757.2075-1-jbx6244@gmail.com>
References: <20191220125520.29871-1-jbx6244@gmail.com>
 <20191228074757.2075-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_035249_490692_B9E29BE1 
X-CRM114-Status: UNSURE (   9.31  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Johan,

Am Samstag, 28. Dezember 2019, 08:47:57 CET schrieb Johan Jonker:
> There are two identical &uart0 nodes in this dts file,
> so remove one of them.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
thanks for separating the duplicate-removal from the other changes
and I've applied the patch for 5.6 now.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
