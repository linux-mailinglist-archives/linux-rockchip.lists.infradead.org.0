Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2510A150531
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Feb 2020 12:25:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGMK9dETP7/jnTfbpMeDmJYSvao5xGgBhfWZPCo3nyE=; b=ULw4RcXRhDcFhX
	TPAULaW5ODPHxhMtvhVLoHm79J+FUsPCNdUDaqZkkxoTPCyROt4D+GHqjHhOwh21KKvvINKEH2jSY
	FUhZJYVrnLKr41pzjCnMYg1GIkmmKixAKJceFQgHeNTpd/UQLgxarpWi5rxt9gxEy34Y/0ltUiBvG
	ziYk5tTmiaiYE9Mz9nd5Ide5MqbS0xRnhfYOo4gM7xslEiTkAeDeDotSHhQpJaGvJOE23Yod2wDpM
	PNQn0CocK1/AyWkEtAI22GNnf0FJziAXFj2+YRFcSdwLx/FSo7/Tp3PxdBkG/Z/abESao/oDOrdZj
	UGygN9DrTUnX1NepGMcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyZrN-0000oQ-6d; Mon, 03 Feb 2020 11:25:45 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyZrJ-0000nd-C7
 for linux-rockchip@lists.infradead.org; Mon, 03 Feb 2020 11:25:43 +0000
Received: by mail-il1-x141.google.com with SMTP id l4so12304626ilj.1
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Feb 2020 03:25:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a7UIA1MLdoeZpjcN4lsoLzldJkQedswvUHzPYh6x7pM=;
 b=AY7ue2tMrZVwAmO9RjpT9osDGzOwkBH0ufPjJax7E8zDMbr9uG593HENMyzmuc5pMy
 zaJDo4nUuzVC1RyEooCwdW9Cl4zYmWsnze9riCKVnOWsJ4uwxyecrKavwHgIdh9PjJsF
 asexbrYdUW+pLgJKYzK1S0gHQfPJS6sUEMqm4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a7UIA1MLdoeZpjcN4lsoLzldJkQedswvUHzPYh6x7pM=;
 b=t4vt6bvi/u12D3Y6qoUXSBqdlSoezC8dR/BKRemaTkNbhYAeAO0SouW072+YdUX2Vm
 pYUZjzAt4c0x/lw4pdJ16xMtZSCBQfpUb0NGrWom0Vt/B5uoQ7VuTtqNoG/rH0FsYoDT
 WmiFbMiiqhPiXZjeJHTEEK00TaK3AJ8EtCdT5dKivS8l2rd9bPSf/1qESHhkFZ0qFDXV
 FvBcxNBJ9vzMjFeZfC8qcSEKb7/xSPEgTG7lkrqaABWQeYxE9nTl6uW3mHqyBu5UCwRe
 OOojjYUGPLTaHAnHWX/GItqPH5qUXbbUWUaflbilDiQZ61apwNsjdjq7Y05AM5pe7xGs
 jQqA==
X-Gm-Message-State: APjAAAV6dOeZ/LaqwzI7SnR1se6alq4FwHXA+Gbk1idMLpLfUTGYmW1n
 n/Y2DRmYU0cEuoFbA5KXQUjNHnngOdOipqEMpEtZZB4M
X-Google-Smtp-Source: APXvYqxDnaK/qKqjfHIbHcm961CEsgiOHzqoEHlTXl26VkZ6E1rvR/tUzyyVNsDu1ajX9eAbuP5q7p2lAj/+JZSZOZI=
X-Received: by 2002:a92:9f1b:: with SMTP id u27mr15007571ili.173.1580729138751; 
 Mon, 03 Feb 2020 03:25:38 -0800 (PST)
MIME-Version: 1.0
References: <20200123162845.10651-1-jagan@amarulasolutions.com>
 <20200123162845.10651-5-jagan@amarulasolutions.com>
 <20200124152735.GR26536@bill-the-cat>
In-Reply-To: <20200124152735.GR26536@bill-the-cat>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 3 Feb 2020 16:55:27 +0530
Message-ID: <CAMty3ZBQ_mRY4ojo_4iHUzup2tD-FO6ZmskwJyXskg4O4iHz+Q@mail.gmail.com>
Subject: Re: [PATCH 4/4] rockchip: Enable HDMI output on rk3399 board w/ HDMI
To: Tom Rini <trini@konsulko.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_032541_848440_F9157A36 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anatolij Gustschin <agust@denx.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 8:57 PM Tom Rini <trini@konsulko.com> wrote:
>
> On Thu, Jan 23, 2020 at 09:58:45PM +0530, Jagan Teki wrote:
>
> > Enable config options and console setting to respective
> > rk3399 board for HDMI output.
> >
> > Boards supported and tested on this patch are:
> > - NanoPc T4
> > - NanoPi M4
> > - NanoPi Neo4
> > - ROC-RK3399-PC
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  configs/nanopc-t4-rk3399_defconfig   | 6 ++++++
> >  configs/nanopi-m4-rk3399_defconfig   | 6 ++++++
> >  configs/nanopi-neo4-rk3399_defconfig | 6 ++++++
> >  configs/roc-pc-rk3399_defconfig      | 6 ++++++
> >  include/configs/evb_rk3399.h         | 5 +++++
> >  5 files changed, 29 insertions(+)
> >
> > diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
> > index bd6d60ff6c..17e8a18d31 100644
> > --- a/configs/nanopc-t4-rk3399_defconfig
> > +++ b/configs/nanopc-t4-rk3399_defconfig
> > @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=y
> >  CONFIG_USB_ETHER_SMSC95XX=y
> >  CONFIG_SPL_TINY_MEMSET=y
> >  CONFIG_ERRNO_STR=y
> > +CONFIG_DM_VIDEO=y
> > +CONFIG_VIDEO_BPP16=y
> > +CONFIG_VIDEO_BPP32=y
> > +CONFIG_DISPLAY=y
> > +CONFIG_VIDEO_ROCKCHIP=y
> > +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> > diff --git a/configs/nanopi-m4-rk3399_defconfig b/configs/nanopi-m4-rk3399_defconfig
> > index 74ede13c23..b73b2fdc27 100644
> > --- a/configs/nanopi-m4-rk3399_defconfig
> > +++ b/configs/nanopi-m4-rk3399_defconfig
> > @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=y
> >  CONFIG_USB_ETHER_SMSC95XX=y
> >  CONFIG_SPL_TINY_MEMSET=y
> >  CONFIG_ERRNO_STR=y
> > +CONFIG_DM_VIDEO=y
> > +CONFIG_VIDEO_BPP16=y
> > +CONFIG_VIDEO_BPP32=y
> > +CONFIG_DISPLAY=y
> > +CONFIG_VIDEO_ROCKCHIP=y
> > +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> > diff --git a/configs/nanopi-neo4-rk3399_defconfig b/configs/nanopi-neo4-rk3399_defconfig
> > index a44124aac0..2ecb50967b 100644
> > --- a/configs/nanopi-neo4-rk3399_defconfig
> > +++ b/configs/nanopi-neo4-rk3399_defconfig
> > @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=y
> >  CONFIG_USB_ETHER_SMSC95XX=y
> >  CONFIG_SPL_TINY_MEMSET=y
> >  CONFIG_ERRNO_STR=y
> > +CONFIG_DM_VIDEO=y
> > +CONFIG_VIDEO_BPP16=y
> > +CONFIG_VIDEO_BPP32=y
> > +CONFIG_DISPLAY=y
> > +CONFIG_VIDEO_ROCKCHIP=y
> > +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> > diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
> > index 3a051d9b0c..a9f99f992d 100644
> > --- a/configs/roc-pc-rk3399_defconfig
> > +++ b/configs/roc-pc-rk3399_defconfig
> > @@ -56,3 +56,9 @@ CONFIG_USB_ETHER_RTL8152=y
> >  CONFIG_USB_ETHER_SMSC95XX=y
> >  CONFIG_SPL_TINY_MEMSET=y
> >  CONFIG_ERRNO_STR=y
> > +CONFIG_DM_VIDEO=y
> > +CONFIG_VIDEO_BPP16=y
> > +CONFIG_VIDEO_BPP32=y
> > +CONFIG_DISPLAY=y
> > +CONFIG_VIDEO_ROCKCHIP=y
> > +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> > diff --git a/include/configs/evb_rk3399.h b/include/configs/evb_rk3399.h
> > index c0b0358893..09eb361655 100644
> > --- a/include/configs/evb_rk3399.h
> > +++ b/include/configs/evb_rk3399.h
> > @@ -6,6 +6,11 @@
> >  #ifndef __EVB_RK3399_H
> >  #define __EVB_RK3399_H
> >
> > +#define ROCKCHIP_DEVICE_SETTINGS \
> > +             "stdin=serial,cros-ec-keyb\0" \
> > +             "stdout=serial,vidconsole\0" \
> > +             "stderr=serial,vidconsole\0"
> > +
> >  #include <configs/rk3399_common.h>
> >
> >  #if defined(CONFIG_ENV_IS_IN_MMC)
>
> This seems like another commit (along with the question I saw about
> i.MX FB not showing the right colors) 2cc393f32fd9 needs to be reworked
> so that we default to enabling everything still but let boards opt out
> rather than forcing everyone to opt-in as it seems like there's a lot of
> cases where people need to opt-in and didn't know.

yes, this evb board config is common across most of the rk3399
defconfig boards. this patch enable hdmi on few rk3399 boards all use
same config file, evb_rk3399.h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
