Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8DB1956F8
	for <lists+linux-rockchip@lfdr.de>; Fri, 27 Mar 2020 13:16:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EpsGNONpYXEqJbdWPbDnPpCW5xNeQchN0wDTeUahmKg=; b=j3c/euVqKaFvwT
	M44+ZN3j+f0Mc4j77FRAkwTpq6Vor8FAoLRS/V5TD27Hd88CTkNPnlYoiH9TAKGsptXIkNV9mVB5W
	hbtP9SkyWLlo/rp1tuYoNlgp0qD0P2tfggQ+rR6c5HmZUMssVRBOQPdwwzzhBeJ9zN1S+5dUccYWr
	cJIfqGMlwbfa+xCUDJR1Veon6WV8SEEQuGRBevXzgzSMHfEWB24PaeIOayR/iX3Q/9jZFP0Ey6RG3
	RgZJ0rGmPYuwKp44ZrK+dcWKHcBs4EHvSO4Tk0D+65Bl2LdHxFOtnDd3/ilpdzpxfpPFKWTXQIbuq
	RzaF32Mh+jYr+ZEFCopw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHnuP-0005OG-IX; Fri, 27 Mar 2020 12:16:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHnuD-0005Fx-ME; Fri, 27 Mar 2020 12:16:10 +0000
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC4A9207FF;
 Fri, 27 Mar 2020 12:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585311369;
 bh=/2HMPORZ12E8OERO6OoSoK6K05k7eyq73faR8OPKxfY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xA/vyeexZuSQ7/a6cRtGnGJWJBvB60XeijO/mgEYeru5BovhhXZeWIvDQ3RmgU1Mm
 3G0dL9JQkVEWj/lWk/jzsBWijwDtIBnjaEgUJDx9MXa5DhMJ9gCDf5NaYhQgAomnB3
 o0zroopYZegnvlluYSPNkRh63XjwoHG/bWc/EpGk=
Received: by mail-wr1-f54.google.com with SMTP id a25so11195001wrd.0;
 Fri, 27 Mar 2020 05:16:08 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0gvb7ngc5Wd1AJ2gbrMlBGsCMuInNhn7PvVirzlo4HRv3gKCRy
 ZhSmHag/KQ6mdweasvxLd2/zPdZERA2fq+/pHDY=
X-Google-Smtp-Source: ADFU+vvcUOv53tgiW4AvEma9SKV84qzuLQblzC1TPmgmBJHgDj8wMXy6C+BdlFl+bzbXobFqKfuFsZF1/2Rc7E7lh/I=
X-Received: by 2002:a5d:4146:: with SMTP id c6mr14141722wrq.181.1585311367249; 
 Fri, 27 Mar 2020 05:16:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200327030414.5903-3-wens@kernel.org>
 <8bfb3237-4bd3-8452-1860-ac05f3a23503@gmail.com>
In-Reply-To: <8bfb3237-4bd3-8452-1860-ac05f3a23503@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 27 Mar 2020 20:15:57 +0800
X-Gmail-Original-Message-ID: <CAGb2v65CL_K-c=fej=5UNseJvApusj7Q1AjZETs-q70kOwey8w@mail.gmail.com>
Message-ID: <CAGb2v65CL_K-c=fej=5UNseJvApusj7Q1AjZETs-q70kOwey8w@mail.gmail.com>
Subject: Re: [PATCH 2/6] arm64: dts: rockchip: rk3328: Replace RK805 PMIC node
 name with "pmic"
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_051609_761203_945D4AEE 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 8:12 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Chen-Yu Tsai,
>
> The Documentation/ portion of the patch should come in the series before
> the code implementing the binding.

The name is not part of the binding.

> If you like, could you convert the binding as well and fix the example?
>
> Documentation/devicetree/bindings/pinctrl/pinctrl-rk805.txt

I can send an extra patch to fix the example.

ChenYu

> > Example:
> > --------
> > rk805: rk805@18 {
> >       compatible = "rockchip,rk805";
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
