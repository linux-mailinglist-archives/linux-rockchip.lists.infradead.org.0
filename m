Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47223469EE
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 22:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJnXY8SiYvflgmt4dG82WnYuIUC3AMG1gvj6vFc5zy4=; b=guixKrS9ELgLvT
	ahNSFCNaWLi6XsQtxTkOuALcPmf/SJsvJlI1iLLMkfdkufud3j3qP+Ley1n+1B/y2PxyqJcCBYNmO
	/0G53qg7vVK09GhCoF7xFeLmzctq2s5lA+kWUiy1c9NsB4KtfjJmZuCo1BJ5ALcc7DC3Tof62Mv5H
	+TbESp4rNJE/T1MXoUWjXLWSuXrcSvmAMPTr0DHZiffBzw4rp2CVRzNReuNMwl54eFZ/2z2zDx/YU
	irzTOmujB/K0GFSOAixvwWkzoE2+XU5JpufAgOdC+dt5lMLEQOi5AVuCKcaKuCX1hBIfvCQEHXy/b
	fLZxmMbilH+Uf5EiYwSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsvv-0003XM-EG; Fri, 14 Jun 2019 20:36:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsvj-0003MT-6h; Fri, 14 Jun 2019 20:36:12 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 959DA217F9;
 Fri, 14 Jun 2019 20:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560544570;
 bh=RQFeY7ClB3qfZKUqanGUTFvCrvIQv9xp/N5O5ZqmrGM=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=fr/TmeQBEPKbLUgkDfSTEhkYS/y4YHrr57CLOtIcGW9sNuajAET5wxTQr07bnOLMh
 7hE0zaI6D/yrtKuLXwSnBM8hQhS5xdVHThZ7fMOEmZ7C8C+zVH7d80njyK4SeX5nv0
 p/a54K9i3XcPK0xQHnK47DZ6q/7T0QjynQ0+X/6Q=
MIME-Version: 1.0
In-Reply-To: <13456600.FWPkgmLa5g@phil>
References: <20190614165454.13743-1-heiko@sntech.de>
 <20190614174526.6F805217D6@mail.kernel.org>
 <19cea8f7c279ef6efb12d1ec0822767d@risingedge.co.za>
 <13456600.FWPkgmLa5g@phil>
To: Heiko Stuebner <heiko@sntech.de>,
 Justin Swartz <justin.swartz@risingedge.co.za>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 3/4] ARM: dts: rockchip: add display nodes for rk322x
User-Agent: alot/0.8.1
Date: Fri, 14 Jun 2019 13:36:09 -0700
Message-Id: <20190614203610.959DA217F9@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133611_261246_6ADA0B51 
X-CRM114-Status: GOOD (  18.21  )
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
Cc: linux-rockchip@lists.infradead.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Quoting Heiko Stuebner (2019-06-14 12:33:12)
> Am Freitag, 14. Juni 2019, 20:32:35 CEST schrieb Justin Swartz:
> > On 2019-06-14 19:45, Stephen Boyd wrote:
> > >> diff --git a/arch/arm/boot/dts/rk322x.dtsi 
> > >> b/arch/arm/boot/dts/rk322x.dtsi
> > >> index da102fff96a2..148f9b5157ea 100644
> > >> --- a/arch/arm/boot/dts/rk322x.dtsi
> > >> +++ b/arch/arm/boot/dts/rk322x.dtsi
> > >> @@ -143,6 +143,11 @@
> > >> #clock-cells = <0>;
> > >> };
> > >> 
> > >> +       display_subsystem: display-subsystem {
> > >> +               compatible = "rockchip,display-subsystem";
> > >> +               ports = <&vop_out>;
> > >> +       };
> > >> +
> > > 
> > > What is this? It doesn't have a reg property so it looks like a virtual
> > > device. Why is it in DT?
> > 
> > This is a virtual device.
> > 
> > I assumed it would be acceptable to it find in a device tree due to 
> > binding documentation, 
> > "Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt, 
> > which states:
> > 
> > <quote>
> > The Rockchip DRM master device is a virtual device needed to list all
> > vop devices or other display interface nodes that comprise the
> > graphics subsystem.
> > </quote>
> > 
> > Without the "display_subsystem" device node, the HDMI PHY and 
> > rockchipdrmfb frame buffer device are not initialized.
> > 
> > Perhaps I should have included this in my commit message? :)
> 
> As Justin said, that is very much common as the root of the components
> that make up the drm device and pretty much common in a lot of devicetrees
> for the last 5 years and longer ;-) .
> 
> Also gpio-keys also don't have a reg property ;-) .
> 

Do you have a SoC node? If so, this virtual device should live in the
root, away from the nodes that have reg properties and are thus in the
SoC node.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
