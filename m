Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A578A1B5EB1
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Apr 2020 17:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FK7oPt432pRp6DdTs/lwMjkH9jLr9rShQjfqzIh1gwQ=; b=C2cs7D8Cu9G7Ed
	qXH3W1Zax2JPExZX/pbPAKH2x9mMrf/YsMrOUpXjjJbqzHYde5VkoiMdtgqHfUBheh+6prgLvCgMK
	QX7TJ7kjOj/RHSlQyqNEVl7QbPQnzwNuKDZ0rPYtktHLC7xIG4p/RB02LP1OYG6xjIavc7BiWrgds
	Jr73YtD0mZ8pLNokRk2AhpskeVMKmv0/8Ho+rq0/7zkY1awDZvofyx+VwHQdleaD4Bw+uqdLc5FaU
	lsZICaUff9rQjMGsIghRNgKO4ZyFj9euJPPkzSA+0EL/kfLbFjcaRPNkgGNJAz2Yozs9Rj9N8b6NS
	39GQcbe4blObXLxrGyQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdTz-0003MR-Js; Thu, 23 Apr 2020 15:09:43 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdTw-0003LL-7p
 for linux-rockchip@lists.infradead.org; Thu, 23 Apr 2020 15:09:41 +0000
Received: by mail-ej1-x643.google.com with SMTP id k8so4950214ejv.3
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2020 08:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V8M7D0J6b3X2xQYPoPoZJgayNof6E4l6pjpPApTeMlQ=;
 b=eIuS2GBnZHI6QvFYbQSrRWnwYStNa2MBztSJSTway3kXEQTbkAd0z1mixWfiUu/YoY
 YI8Zz8f5FUblfi4L083WZtcInj7fBZbVkLIeRt7xT6A/C5B/WH7bpksKjFYvpzCEzKFK
 5d68jH/9atvTnHuPYU9G5Ek5XZETYmCDxt+eCCz1aRDMkxd8B1tyzR0QQT73B5kepbil
 tKd/kgA/aomkCX8cfb4vDh1AJtoxFfQOlG0KpIwp3PmlqP0qre4c4njadZZ3iXB+JbY0
 bLuGRu46Dx1M537eP6ASdVn5qCDILklpvSNQFbkgEZ2ADCP5FxXuwL7VeAfo701lLmcZ
 XFlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V8M7D0J6b3X2xQYPoPoZJgayNof6E4l6pjpPApTeMlQ=;
 b=D0ojHcD6TUW7HLGmq4oheAi4oy8vl6nrsdrRvpURC4+8AsNDRyJn4eZbArjg+oUo9C
 nlEwWRlkWTne+BboIg9PHLRmOYGN6UDxRozgNr0y773D6ZFoQn3xOHF1RsjYXkRrKHzz
 Gj6lSIzTj0r5hs9T0uAxAe9nWRcnEwCSr9y+ZSzPwmtKWnM8SzCGPckPqUPGBUz/lwdr
 GVblCzWyKfm3dbrwvgmjFXzUfjng/0tPnKv9NjSR1+C/9vzasWwifYQCKi1TMWbD+OFR
 AvcthOqsiAWrMkI7N6Do4cZ7uDR230WhbfBbEGf47wGKMc42ILa52Z+OKdAo6UFgHkjb
 zc9A==
X-Gm-Message-State: AGi0PuaJoGzXNEQStposxK30ICUD2CYVlM5dBAEJmDJ716pX40fj+OL2
 Rg43DW6lhdB6W00INYCxN7+yFDD+nLThJntnp70=
X-Google-Smtp-Source: APiQypIKxHQs2m7XgR8ob3gIYF7cq9xVNS8p1x3qcjH+Hw2Zx5xOND2rCTodlZsogmPeYoTgBFflevQJ+Ib4rCi6hVI=
X-Received: by 2002:a17:906:70f:: with SMTP id
 y15mr3083190ejb.276.1587654578600; 
 Thu, 23 Apr 2020 08:09:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200423150510.6216-1-pgwipeout@gmail.com>
In-Reply-To: <20200423150510.6216-1-pgwipeout@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 23 Apr 2020 11:09:26 -0400
Message-ID: <CAMdYzYoFvaVXoYo0-vZnEmXK4GKsO_i8Cdggr7AJ8U6uS_ZW8Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3399 pcie speed
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_080940_279874_D35FCE6D 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pgwipeout[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 11:05 AM Peter Geis <pgwipeout@gmail.com> wrote:
>
> The rk3399 is capable of operating at PCIe gen 2 as per the TRM.
> The device-tree incorrectly limits us to gen 1.
>
> Correctly set the maximum link speed to <2>.
>
> Tested on the rockpro64.

Note, this was tested on the rockpro64 after I performed the hardware
fixes as delineated at
https://forum.pine64.org/showthread.php?tid=8374

We probably will have to drop this back to <1> on board specific dts
files if issues are discovered.

>
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 74f2c3d49095..e9efd330810b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -248,7 +248,7 @@
>                                 <0 0 0 3 &pcie0_intc 2>,
>                                 <0 0 0 4 &pcie0_intc 3>;
>                 linux,pci-domain = <0>;
> -               max-link-speed = <1>;
> +               max-link-speed = <2>;
>                 msi-map = <0x0 &its 0x0 0x1000>;
>                 phys = <&pcie_phy 0>, <&pcie_phy 1>,
>                        <&pcie_phy 2>, <&pcie_phy 3>;
> --
> 2.20.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
