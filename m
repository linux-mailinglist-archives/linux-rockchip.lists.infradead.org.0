Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6897B1AB
	for <lists+linux-rockchip@lfdr.de>; Tue, 30 Jul 2019 20:19:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PhX6vnKGMQ08dYSUmzZUqzZ+rt1bIOTGRHfC4hiswtc=; b=itMWBQjrL9gLfk
	HsNGpBbyYAF3bjNZB7vam0Y9ovZo6dRdUTL5o5EQ+Xm6vFEGla9T+9V/GJ7g9ZifllhPhrV6yjpIW
	p4xObUl2wbj8gTqaHg/fktmczO9M4oKv3reU7i1jH9vTapbO1qveLTjMwo6bxslh5i3DxZTOorDTF
	YHPsiK4+6TXQx3hyN04FsDNfZEbkfd2ydypM+SeydiaQyTxOq5zfYaEVM46jKb43tUXDUUo6sxA2s
	YqkBReNLlBu/NFjfCsC2q6rkgwxAM+ZVH2/fG4G4fb5LTLPmDPFMrjtQ84ZU1sIpebkj15gq/yJhB
	ZjpGldlSiK7AiH/WA6mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsWii-0002t9-5j; Tue, 30 Jul 2019 18:19:32 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsWiV-0002i6-PX
 for linux-rockchip@lists.infradead.org; Tue, 30 Jul 2019 18:19:21 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so30251932pff.9
 for <linux-rockchip@lists.infradead.org>; Tue, 30 Jul 2019 11:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WYV3lJkZz1M8QFLTNcbisKstq4q45qxIoF6vMekR4Ik=;
 b=mZqGk/cUp6ZNJEsrEHgluVspbQqD/bx8uYW6vGDU/FpCW5W4GoxK+4/b1HjJ4bSDCq
 xyW3ZS0uf0DfYXzWcHQIeKMfCqgFrRDayoLgDTv4QOWbhe8Raxi6hVsR1bQ6j1+njf6I
 kMOQ/nc0tCcPOfurVrxe/F1hJnYiinkBApcH4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WYV3lJkZz1M8QFLTNcbisKstq4q45qxIoF6vMekR4Ik=;
 b=odEsgmFlgmhewkkB+tJTiInudgUq3VvDPyN+jmTScHANNqemnC4OSwzBLp2Vu7vU4B
 DJO/z6RfcnH3iGIrNA2SpgM/Nthvw8NY8K3gWu1vkVKoD4g6KoAi8VkLeNoBSQ/B6QP2
 RrgnGlipABapF/ZUAsmL/KNYQWyDwxNgxO5WQKSzfB1Sm6/k7Zbfef1j5VrI2ATktCNw
 mkFRRKJFEg+A6xQn8rjV9+Eapri0EsuDV/SmZbEOpS0auTty0YCgMSAKU+o8Q65uRuLL
 cDU8R4ZjyKEq/1q6HqvdCDjd2ooNHR9r3Wq8uqwxr8Zj8YYPoaF1E3FjDp3ioTB4INPP
 6xxg==
X-Gm-Message-State: APjAAAU1zoSqibblGJmBwtuxY8ar7/W6/vZxHEqRAcOgx+mov17LPaR9
 1OAtNH0Hsljjp+pCejG4A6clsw==
X-Google-Smtp-Source: APXvYqw4/yqmb0Rlt+53Fv5Ar1d4LMo3nzvzPjOQ1bEXUP20GHFA0n4fefD4ezGXYZ/+3e25mhoUqg==
X-Received: by 2002:a17:90a:360c:: with SMTP id
 s12mr120028251pjb.30.1564510759254; 
 Tue, 30 Jul 2019 11:19:19 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id h12sm79833057pje.12.2019.07.30.11.19.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 11:19:18 -0700 (PDT)
Date: Tue, 30 Jul 2019 11:19:16 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: dts: rockchip: A few fixes for veyron-{fievel, tiger}
Message-ID: <20190730181916.GJ250418@google.com>
References: <20190730173444.56741-1-mka@chromium.org>
 <CAD=FV=Wub9Wkc5t4iQRjBK8R_d_oh4PoHPwLHb4T5+Meij7sSg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=Wub9Wkc5t4iQRjBK8R_d_oh4PoHPwLHb4T5+Meij7sSg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_111919_827782_CCFA6A3A 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 11:01:42AM -0700, Doug Anderson wrote:
> Hi,
> 
> On Tue, Jul 30, 2019 at 10:34 AM Matthias Kaehlcke <mka@chromium.org> wrote:
> >
> > @@ -130,12 +138,13 @@
> >                         regulator-max-microvolt = <1800000>;
> >                         regulator-name = "vdd18_lcdt";
> >                         regulator-state-mem {
> > -                               regulator-on-in-suspend;
> > +                               regulator-off-in-suspend;
> >                                 regulator-suspend-microvolt = <1800000>;
> 
> Please remove "regulator-suspend-microvolt = <1800000>;" which doesn't
> make sense once you have "regulator-off-in-suspend".

will remove all instances

> >                         };
> >                 };
> >
> > -               /* This is not a pwren anymore, but the real power supply,
> > +               /*
> > +                * This is not a pwren anymore, but the real power supply,
> >                  * vdd10_lcd for HDMI_AVDD_1V0
> >                  */
> >                 vdd10_lcd: LDO_REG7 {
> > @@ -145,7 +154,7 @@
> >                         regulator-max-microvolt = <1000000>;
> >                         regulator-name = "vdd10_lcd";
> >                         regulator-state-mem {
> > -                               regulator-on-in-suspend;
> > +                               regulator-off-in-suspend;
> >                                 regulator-suspend-microvolt = <1000000>;
> 
> Please remove "regulator-suspend-microvolt = <1000000>;" which doesn't
> make sense once you have "regulator-off-in-suspend".
> 
> 
> >                         };
> >
> > @@ -159,7 +168,7 @@
> >                         regulator-max-microvolt = <3300000>;
> >                         regulator-name = "vcc33_ccd";
> >                         regulator-state-mem {
> > -                               regulator-on-in-suspend;
> > +                               regulator-off-in-suspend;
> >                                 regulator-suspend-microvolt = <3300000>;
> 
> Please remove "regulator-suspend-microvolt = <3300000>;" which doesn't
> make sense once you have "regulator-off-in-suspend".
> 
> 
> Other than those things, this patch looks good to me and feel free to
> add my Reviewed-by.

Thanks for your review!

> NOTE: when I tried applying this to my tree git
> complained and I had to apply manually.  Could you try sending this
> patch atop Heiko's for-next tree?  The yell I got:
> 
> error: sha1 information is lacking or useless
> (arch/arm/boot/dts/rk3288-veyron-fievel.dts).
> error: could not build fake ancestor

Ok, I'll rebase v2 on Heiko's for-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
