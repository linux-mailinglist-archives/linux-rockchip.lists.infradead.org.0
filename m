Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A09DE19BB27
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 06:39:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=we7yfcyE1PlsAr3H3fV/wlZNgIcdV2SPYh0GuLU3/Xc=; b=tvAPN/imRudEg+
	Bg9f86nPxb8glIoy/oIOPGxhBRa1UUPhpQYFVc0BH2EFHPRcRnMq4DvgbTsAsJwGRaH0z7GhNlQ1y
	P0e9g0Q/w6y6QF0XlTmY4rE2nbE701qnUaE23rHKrNfd8dBd19GJbQVGm4LcOg+BYxpKx3GqbNj2X
	WL4NUapgvhVHaNdGx79K1fbA4DfwUsu/YotaI1iSM4CC/iMMwti3NXqME1Rx2MM2cOCAYzNAtSeid
	jutwmEv1jDCaShvsKC22K5RXJFLPmzwZLp/oi1cg6g4AfhGBaGkmygeAjt9wMOYijbfrr55ZJdG/A
	B0JF2cX1RjnT5zJEr15A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJrdS-0002lB-DB; Thu, 02 Apr 2020 04:39:22 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJrdO-0002kL-NV
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 04:39:20 +0000
Received: by mail-wm1-x331.google.com with SMTP id c81so1939464wmd.4
 for <linux-rockchip@lists.infradead.org>; Wed, 01 Apr 2020 21:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hFr3wJ+VHJBrjZDb9CHQvayVPJsDhaTPMB8CtbJB2y0=;
 b=qFH5SSkWTGA0EXCwjem2R05zCqz6BagDw/XrXdzvQFA+kuaB7iAqEvXjbvstYjJeAd
 Qta2St9mCE/UII3mDAh5bzAep0c/81yCGLMX7udqVBGq7zWPphapnL5WefWHR7Nc4Tt/
 Lwop0mAzgXEoXsdY+4HVX72yzipvA+X2vtMr8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hFr3wJ+VHJBrjZDb9CHQvayVPJsDhaTPMB8CtbJB2y0=;
 b=bCvMkMS+LHKMHDaN72A7K9trOKIo2QJkIhP9Wh/iFRgPkVpUseKJ/lVWeteqQiEcpU
 VelbIpmPYoIkQoKV1ffwK+KfihPO+pf3OVI34JkkAbtG7af9W3IZVFoHsx9WxecbAv6L
 zoIz8EFMCHaYWY30HJ+AaXw4SZ7HRw8VxW0U0GZNeJmTJ5Ai7j333bjkBh0S8UEJnl7n
 S0byt2eOb70k5D8Pg1tWhfydl0EzEVP7+ZB/iUc7vM9DM7iB/vNPYYaVbsKCISsLj9Hi
 OhPAOkELeU42ZxJ/DaO7R84nkoDgQ7p+2YSWZ5l+SUd1dU7ni7LnjKt9q7zi3lZB0ttP
 EEPw==
X-Gm-Message-State: AGi0PuaFX5uGx+dgVZ7XiPpDQMYTjwi3i7tUS9B0vWzKPM0xnvaKhTM6
 42clO1BqeDcV2bhAtLnhucgCekl65FAaNhviZpyNBQ==
X-Google-Smtp-Source: APiQypIXYN/AefhReYmGvsSxgJ0ihUGaEcFb+/kwUDfrRlL7wPE5kyRxFNuO/NOoT2ApXErtnWipH7fqa0Wbh9osPz4=
X-Received: by 2002:a1c:82:: with SMTP id 124mr1312209wma.63.1585802354559;
 Wed, 01 Apr 2020 21:39:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAM+7aWuR-2EYSDQLj+Sep9cu_cAsL5QD=wRrar-9vLSd_7KPyg@mail.gmail.com>
 <c3f77864-ab66-e31c-e9a6-5a3c8e10b6ea@fivetechno.de>
In-Reply-To: <c3f77864-ab66-e31c-e9a6-5a3c8e10b6ea@fivetechno.de>
From: Suniel Mahesh <sunil@amarulasolutions.com>
Date: Thu, 2 Apr 2020 10:09:03 +0530
Message-ID: <CAM+7aWshiM3YAc9B+GADqKry7bAPapdTJAym-9Wzadtdr3cJHg@mail.gmail.com>
Subject: Re: Power Key/button on rk3399-roc-pc
To: Markus Reichl <m.reichl@fivetechno.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_213918_905997_EC7741F1 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:331 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 djw@t-chip.com.cn, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Apr 1, 2020 at 3:40 PM Markus Reichl <m.reichl@fivetechno.de> wrote:
>
> Hi Suniel,
>
> Am 01.04.20 um 06:53 schrieb Suniel Mahesh:
> > Hi Markus, Levin and all,
> >
> > Can you guys please suggest me on my requirement.
> >
> > rk3399-roc-pc board has a Power Key/button. As per the schematics this
> > Power Key/button
> > is connected to GPIO0_A5.
>
> And to PWRON of RK808.
>
> >
> > My requirement is can I use this button for board powerup (especially
> > in linux when we issue
> > "poweroff" command, the board shuts down and it should power back on
> > after I press the Power Key/button).
> >
> > For the above to happen, I think this Power Key/button be connected to
> > PMIC RK808-D IC, am i correct ?
>
> Yes, see P.16 of ROC-3399-PC-V10-A-20180804 schematic.
> >
> > In the schematics, it is not very clear as if such arrangement is
> > there (though it says it can be an option in
> > RK3399_BOX_REF_V13_20180821.pdf). I am attaching the document.
> >
> > Please suggest/comment on my requirement.
>
> Should work, everything is in place, just press long enough ;-).

Thanks Markus for your help. its working.

>
> Btw. could you just revert your recent U-Boot commit
> checking GPIO0_A5 that prevents unattended booting?

we have sent a patch series(5 patches) which takes care of the above
issue. attaching patchwork links:
https://patchwork.ozlabs.org/patch/1258093/

Suniel
>
> Thanks,
> --
> Markus
>
> >
> > Thanks and regards
> > Suniel
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
