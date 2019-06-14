Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EE246603
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 19:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=slifNbwSvdwFEx7cbtjIH6+Ji8iW9hOhz3wZ6Qbs1b8=; b=G1G+G17rV9kMHn
	EyCehavYoaaYu4ZG2DugmSuXysUWIRNlGtfgYjHR0PsuNJbnXlfYtaPneOxb1YEE98PM/edJcEKUk
	02xdjdlCVz4VWaG773VCzwjNrM+iZO4/AMhxQuBGqUWUTepmO0rICDhdCvIQFVgjyEDfaGd8QAX5K
	5JRoxilRjb/OMksjgQwwFUu/Xl9o9HCIvyEEiOMMb5aicfr9PkGIkucYpL9qgkEu5YSIthA+R6sRw
	uBCMD2O9H4MfszS8C55RYB+OX3XhyiWBAzqc26eIPXrEMXyGsvK1VU5z4n3sgdURB54JzJfPkcF8A
	a/NkCOGck1InxcH2977Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbqGj-0006dP-0c; Fri, 14 Jun 2019 17:45:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbqGW-0006Ox-8X; Fri, 14 Jun 2019 17:45:29 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F805217D6;
 Fri, 14 Jun 2019 17:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560534326;
 bh=kx4whV3+G7xv6Ua4IzE5Zy4KcxaFapVmVAK6sYZUR9w=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=NnyqCi+vlDw4kRWkVqrmIm6G5wsVWphvPzg9cKyQ3snje5k3zJEzryynKo3PS9a2Y
 iBbL+mLbmkn5RscFsNohnZ0C3pUPnTFOGFc56J9DXIKAKaqyw4VrIcEnDi8nh/s8+f
 eUqgn4VUbY0weoGF+brolP67G/unwp9nY71RNGzE=
MIME-Version: 1.0
In-Reply-To: <20190614165454.13743-4-heiko@sntech.de>
References: <20190614165454.13743-1-heiko@sntech.de>
 <20190614165454.13743-4-heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 3/4] ARM: dts: rockchip: add display nodes for rk322x
User-Agent: alot/0.8.1
Date: Fri, 14 Jun 2019 10:45:25 -0700
Message-Id: <20190614174526.6F805217D6@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_104528_349160_F91BE110 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: justin.swartz@risingedge.co.za, Heiko Stuebner <heiko@sntech.de>,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Quoting Heiko Stuebner (2019-06-14 09:54:53)
> From: Justin Swartz <justin.swartz@risingedge.co.za>
> 
> Add display_subsystem, hdmi_phy, vop, and hdmi device nodes plus
> a few hdmi pinctrl entries to allow for HDMI output.
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
> [added assigned-clock settings for hdmiphy output]
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm/boot/dts/rk322x.dtsi | 83 +++++++++++++++++++++++++++++++++++
>  1 file changed, 83 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
> index da102fff96a2..148f9b5157ea 100644
> --- a/arch/arm/boot/dts/rk322x.dtsi
> +++ b/arch/arm/boot/dts/rk322x.dtsi
> @@ -143,6 +143,11 @@
>                 #clock-cells = <0>;
>         };
>  
> +       display_subsystem: display-subsystem {
> +               compatible = "rockchip,display-subsystem";
> +               ports = <&vop_out>;
> +       };
> +

What is this? It doesn't have a reg property so it looks like a virtual
device. Why is it in DT?


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
