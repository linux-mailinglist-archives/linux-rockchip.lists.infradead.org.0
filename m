Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6399CB502E
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Sep 2019 16:17:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGVXYQODgkHqMKouuQiaYt/w7KunKNoHumx+TgLKf6o=; b=OhTMzx+ThsL9rS
	U1PEFe4K5dfeYsZoY5PqVP5dNxwA2XKCTc+lzUIRjyG/etfTgyNcJx3hV/vUNVlcjydxRdTaADm4q
	pRJP2c4fSbS0ECXFTBVh6jTyS2udrXa1cIfEuBLbNiwrazIljsDO/s2Q7dg+aIko0dCB86CWVW02+
	PPldjLGFI/tZgXY48fjXCk4W6TZtWR4SebPA96RrFwhUFXvD3jOwsK+6jLx6rL408TrMQIrfnKgyk
	3CBB5BvMbK7OlZf110ftf6E62m/e9sHSmRXpJlkL+VhQOXyUdkRGKbB/Vivq9PTveQ/2UmvkVj7yl
	JYqT3YkvWUidmDqXqOSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAEHz-0006VQ-0S; Tue, 17 Sep 2019 14:17:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAEHu-0006Uz-BZ
 for linux-rockchip@lists.infradead.org; Tue, 17 Sep 2019 14:17:03 +0000
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C121321852
 for <linux-rockchip@lists.infradead.org>; Tue, 17 Sep 2019 14:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568729821;
 bh=Eg8W+ajEjKC/yv26EKpx0aghgM1YzYkbqgvgzwL6m70=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=L7lqaxOLT5sbCuHbPI4FGhSu/i6bMYZnJblkyL6+O0ELC4RXb0ENmhALA06QYVYY/
 YC+4vA+gw8No3ATPGpdFOtolAEhYHf602PKGC4G2nVX3JV8i9ug94+3Pp8dLeNTcE6
 DeqDnX4hNYyZ7cxUrm+4j9FEKtDS+TtJZ2EqEvsc=
Received: by mail-qk1-f175.google.com with SMTP id 201so4096185qkd.13
 for <linux-rockchip@lists.infradead.org>; Tue, 17 Sep 2019 07:17:01 -0700 (PDT)
X-Gm-Message-State: APjAAAXKHnEODQeK9fOluMQZw3fxWwV0V/9uKJi8T5Hpa7EOHrkghMMB
 KqnAkuV6K9x9c4OB0QHkbWGnJj/4O7+Eb3mudg==
X-Google-Smtp-Source: APXvYqwA+ubotuCAbjbaEOhJ5K5H7G+033DyzYBBdrIaGwC3kGgavUiXjVBx7mnqkjhKNrrdOhiiMmBJPcgvh8IBMbc=
X-Received: by 2002:a05:620a:7da:: with SMTP id
 26mr3680849qkb.119.1568729820993; 
 Tue, 17 Sep 2019 07:17:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190917083453.25744-1-heiko@sntech.de>
In-Reply-To: <20190917083453.25744-1-heiko@sntech.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 17 Sep 2019 09:16:49 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+OkHMEzx3goQoUt9xvfuGLbu4v7VD5y6wqrNYp96-z7g@mail.gmail.com>
Message-ID: <CAL_Jsq+OkHMEzx3goQoUt9xvfuGLbu4v7VD5y6wqrNYp96-z7g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: rockchip: fix Theobroma-System board
 bindings
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_071702_422105_365EA660 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 3:35 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> The naming convention for the existing Theobroma boards is
> soc-q7module-baseboard, so rk3399-puma-haikou and the in-kernel
> devicetrees also follow that scheme.
>
> For some reason in the binding a wrong or outdated naming slipped
> in which does not match the used devicetrees and makes the dt-schema
> complain now.
>
> Fix this by using the names used in the wild by actual boards.

Perhaps a Fixes tag.

> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
