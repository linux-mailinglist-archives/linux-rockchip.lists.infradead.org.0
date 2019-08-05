Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAACC81541
	for <lists+linux-rockchip@lfdr.de>; Mon,  5 Aug 2019 11:19:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JsYBB3Sna0wKUUhnqLzgtyzbCYtH8PCSKku/EAQJhcw=; b=bUXpD8LDblBz8V
	CF0kQ/D2Yg0a1ZWpyZPap1w6cvn/rHB6n5y1k4UTiIX7WtGIrsx1LMROUd4k+PR+9hHeNG6fZhQHU
	G0z9/oxA5SKwW+N8a991MTTIhnwkVMPk1exNZwB8Dr0prwk1Wtc6Olq2+zGufNoMNDhoSLdh9h2FH
	6nWJ4iVjkeU5Hqxt/rD4cP4e5BoG023ajebiZnvIHY5JGAdtxuZ3KYhyukiEY5ooiuyUz07TJkCOs
	soFPucIaa5ntlzJxPnIcMu4bCTaFK99obmH26oRoFaHg8+EhbCZLlzGZ4XmSuqBnkPunzYuLDlHxz
	PlaAHzz8x+5qrP5HGSzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZ8o-0001PX-FT; Mon, 05 Aug 2019 09:18:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZ8Q-00016T-PS; Mon, 05 Aug 2019 09:18:31 +0000
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
 [209.85.208.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 189532186A;
 Mon,  5 Aug 2019 09:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564996710;
 bh=3y/xyKQqQxOI/5O7S65myq1HgXxKlZai9ugc4r5PFAs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZVGEXyWfKHiNU9ykvQl6iP/vhiDaIIbECZVQoz2dbKXg0o9tNCy9OFZbp1ZbwMw5u
 vtFxzrASGVSEXmSa62HUtsG05ILylao9uKfI2n+4eJuhzYlYWjorLeb1C2fe8A23w6
 pGRPWmqT9BT+nmjsc6bnzwIbMDRuMZZZ05gPQ21o=
Received: by mail-lj1-f170.google.com with SMTP id x25so78748230ljh.2;
 Mon, 05 Aug 2019 02:18:29 -0700 (PDT)
X-Gm-Message-State: APjAAAXFmkOLmjB7ETpu0s2AXYbAN/UHLQx9gSSEx/L9sZtkL9Nk4X9k
 lOxFLLADpg8H0VB7laOr282vSuzCWwYE53tVADQ=
X-Google-Smtp-Source: APXvYqzggkPHLZ3va+adONzA3B+P4PCDn3noO8lcrGqBRgo8WuH7Fq5Bq7XwbmzdzXRtDWDsIpDJCC30bufng4pCbXM=
X-Received: by 2002:a2e:124b:: with SMTP id t72mr78893429lje.143.1564996708108; 
 Mon, 05 Aug 2019 02:18:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190802132809.8116-1-yuehaibing@huawei.com>
 <20190802132809.8116-4-yuehaibing@huawei.com>
In-Reply-To: <20190802132809.8116-4-yuehaibing@huawei.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 5 Aug 2019 11:18:17 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfvMLehLn+iNOGDEFvsWc93eShUx0=8fn9JWiBOc7wpFw@mail.gmail.com>
Message-ID: <CAJKOXPfvMLehLn+iNOGDEFvsWc93eShUx0=8fn9JWiBOc7wpFw@mail.gmail.com>
Subject: Re: [PATCH -next 03/12] crypto: exynos - use
 devm_platform_ioremap_resource() to simplify code
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_021830_854186_5DE5167A 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: heiko@sntech.de, gary.hook@amd.com, clabbe.montjoie@gmail.com,
 jamie@jamieiles.com, linux-stm32@st-md-mailman.stormreply.com,
 jesper.nilsson@axis.com,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 herbert@gondor.apana.org.au, linux-arm-kernel@axis.com,
 linux-rockchip@lists.infradead.org, wens@csie.org, agross@kernel.org,
 thomas.lendacky@amd.com, alexandre.torgue@st.com, antoine.tenart@bootlin.com,
 linux-arm-msm@vger.kernel.org, mripard@kernel.org,
 linux-mediatek@lists.infradead.org, lars.persson@axis.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-crypto@vger.kernel.org, mcoquelin.stm32@gmail.com, kgene@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 2 Aug 2019 at 15:31, YueHaibing <yuehaibing@huawei.com> wrote:
>
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/crypto/exynos-rng.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
