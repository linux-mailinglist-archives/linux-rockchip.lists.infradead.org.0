Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC3FB22FB
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Sep 2019 17:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/nAzaKVT3KZO6tdP2CU8VVATaC/16JHhvRUY+0nRqM=; b=gPCvXiBucfNvXb
	/xKnlJNm5pSSLG+6+sI6NaKTPPAt/7JokS7k26bhpQqW1Y7FsZLkRBEBzcW/SSEx1xFv26GILScKi
	Btd7x/nWN7OehEnrtIEmiWzo7SniAwg9kMmwvGQx97IjI78CzWJf7rI4Q7C5YgGrK0+DSB7IbsSnq
	FzTp398vtYVuvQ19Drr53hDGQfhP6+cphFh+I9sOO33wIkH+foHh12o3uj4EEKsAM/t5taOzWPjvu
	LVBrXIz0j3z6+//k1ccbCh+9Ksa7XvcasNcUkZw10YSsvloulEDf5hvayS00EcsFbnAJbfiKonbOO
	S1Wz4MyLq9ETVOMLcJwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8n9K-0008MQ-G6; Fri, 13 Sep 2019 15:06:14 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8n6I-0006YU-VE
 for linux-rockchip@lists.infradead.org; Fri, 13 Sep 2019 15:03:10 +0000
Received: by mail-wr1-x442.google.com with SMTP id o18so1213324wrv.13
 for <linux-rockchip@lists.infradead.org>; Fri, 13 Sep 2019 08:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EOnx7SKUzxWFSVBv2yMi0x9M/FRBDXh60enjqbKkCJ8=;
 b=Y7WWVvdWaLVUVc8AjE3K1x/t/bkdv0swOWEUuMftL9+JBtwPYGdZL9eUxIiaE5OojD
 vsjryDtsHIZnFNzKr1qZfgTyXoh6eXOGNGbTwOgn5468uNMhWueUZqCnjC+dH4dz9PkB
 GCpd6QhseCzdoCX9wiSzI+TvmNFwYb0Yuf/QQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EOnx7SKUzxWFSVBv2yMi0x9M/FRBDXh60enjqbKkCJ8=;
 b=I2LbMYFI1NJxZ7/gZxZjTQaD5Cav9OSfFYG3kda3efnp9rLIX+AGN/HN+ycqC13cc1
 5IE8a7fZsbgMT8IrytchcPVx+dyiIQW/gMmsFkWOZa+4ZbptDiRSj1XUV1Ce5K0D2M9e
 q0TBj9QlvKwHhpN1CQm/u60NYs1qj6OD5SVrp11JQS8wQ0T6Yyj1w1RHRMj665XFrJl3
 9JiA+qLtSAXYNu+pRoOFvpfQ+5UYMvCeXkAtb44K+jwV/DnEcRvP+4hPnflQT3Fcv/+8
 WhakIaoFqbnliMEkAR9zHmVntcI7B/g7nmu8PLGQ2l6nmdRY7k0UFAK1EJSdxosBSZxS
 eVkw==
X-Gm-Message-State: APjAAAVhizztECOsCqiRy3kDvwfarIsh6Tbr7qKVVvTAKOhFOv210TTQ
 uVEdPYzaJdds9Fq335hNqe4mmSDgLhO5KQ9+6m+Y4w==
X-Google-Smtp-Source: APXvYqxmQOe46wH9nvCpQD/BrUgfunRwtUBmlYfgZl6qoj7RWn4PF07BeEvXhqOEHZoY0REksuCVhH2znhmJZKp3hTU=
X-Received: by 2002:a5d:4146:: with SMTP id c6mr19729854wrq.205.1568386983914; 
 Fri, 13 Sep 2019 08:03:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAMty3ZDo6Hk9swGcaZ0RNC-4KeQ=EJS9gu_-+ewmM618GHhO+w@mail.gmail.com>
 <20190913160129.0cc8bc99@crub>
 <CAOf5uwmUWXN27rNZ3JR13QSTH3NpGoODvySsCeUtrRE14Kq--Q@mail.gmail.com>
In-Reply-To: <CAOf5uwmUWXN27rNZ3JR13QSTH3NpGoODvySsCeUtrRE14Kq--Q@mail.gmail.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Fri, 13 Sep 2019 17:02:52 +0200
Message-ID: <CAOf5uw=TpMsy54SWMXV=GjoNbvk_cW-Rvf0C3AP_0=mPM1q7HA@mail.gmail.com>
Subject: Re: [U-Boot] rk3288: HDMI out causing boot hang
To: Anatolij Gustschin <agust@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_080307_470413_837C321A 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi

On Fri, Sep 13, 2019 at 4:02 PM Michael Nazzareno Trimarchi
<michael@amarulasolutions.com> wrote:
>
> Hi Anatolij
>
> On Fri, Sep 13, 2019 at 4:01 PM Anatolij Gustschin <agust@denx.de> wrote:
> >
> > Hi Jagan,
> >
> > On Fri, 13 Sep 2019 08:19:47 +0530
> > Jagan Teki jagan@amarulasolutions.com wrote:
> > ...
> > > Any inputs?
> >
> > Try to input "setenv stdout serial" command on the serial console.
> > There might be a chance that stdout/stdin has switched to the
> > video console and the output proceeds there. If the HDMI display
> > shows nothing, it appears like a hang.
>
> It's not an hang. It's the output is not shown. I'm trying to
> understand the reason
>

I have fixed, still not so good ;)

Michael

> Michael
> >
> > --
> > Anatolij
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
>
>
> --
> | Michael Nazzareno Trimarchi                     Amarula Solutions BV |
> | COO  -  Founder                                      Cruquiuskade 47 |
> | +31(0)851119172                                 Amsterdam 1018 AM NL |
> |                  [`as] http://www.amarulasolutions.com               |



-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
