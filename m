Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E68553B4
	for <lists+linux-rockchip@lfdr.de>; Tue, 25 Jun 2019 17:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hOB3mfH+5hxucKrc6YRYYqiCfs2DOFVTJDg2hS01jqY=; b=B+5bBu972+Tmbm
	BvhP6O0hpVrevlz6dX04+NGaph1KFC7NGFxR1M07lWwfFhDx9k9Q+Xj/VaV2va6TyEHP9xkxU79F+
	6Oo2/sGYOn4yBJzVkDyNMKUiGGAyb9LmA2CWBOnAN8KSaD/IT3X/3tNyjG9X6qXDKxwHOngjFLXcN
	UpXelwTn43yxoVUGX9AfUYYMbp0IUe7gCZkCkdOoEa4MRl6I6QYP1QGgHLCoesC17p+cU7UIb7vxj
	bdUa+AbT3DAXbqhhIfclEMw1z0UjvVPZMjaTV1pNIRDmOBjIYuAjEJ8lGmmWAaHBejDQN/Ko0g1TC
	1FAFQTVChu0V69fEn5/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfneM-0006WT-Av; Tue, 25 Jun 2019 15:46:26 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfneC-0006OW-IO
 for linux-rockchip@lists.infradead.org; Tue, 25 Jun 2019 15:46:18 +0000
Received: by mail-io1-xd41.google.com with SMTP id i10so1901058iol.13
 for <linux-rockchip@lists.infradead.org>; Tue, 25 Jun 2019 08:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GMsaTFzgO2BlclI6KmaGtg+htsU34NfPDNzeKkovpQU=;
 b=N89ugp8wKgBOa/XkH4NX54R/PbHbls8PUQ8FiOmkLPJL/u1pE3aUJ74gtl5tuaVkli
 H+A30Xnh3UcvAkomWA0uolqto6cHnqPOZU1NNpQm4NIGL19T8UaYFJo8/knLcjPmRglM
 Joa3GY5HcI59mXaICeLV0vmTLiOH0mFh+YlNk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GMsaTFzgO2BlclI6KmaGtg+htsU34NfPDNzeKkovpQU=;
 b=Tiit6QnbxbSXDwo4HnDw1Ld1Dy44x+PLHADzdfnC2LnTZS6gPxW00K/PQtyzXTUk/L
 qfG3fOAvzRrdUv53MDApAG5pehpyb6hqR00PCxAPMOdkPUL1V7WXKoLdFLFNeCC45Nw7
 v1N7tncepz/VVkDEvVrS1DIwcqiLHBAplFecR0TirdkaVYEzxWVFX6sWTG1YRsQPvRc5
 ldY2Jojn69iDEXSfNXn0lj0r+Ca30jkZiCQa1L5geYRaYVvyTBOEZO7aD3MIQYxh4HHb
 a1H9BRYBf6fw5dWIM786VrE5zt0JOkWxPpVObGJmPmDqnYgVCjmsm2PU7ylPYBKZZGJ5
 3piQ==
X-Gm-Message-State: APjAAAXruxP9iA2vMo8iXMoJ/eIiW3lUrq2Ylby+rrVdhCDYgYmOVols
 bGHOp2Vy6hm9WPW/lnlG+wlxRVa5QWtuXXu3uTMg7A==
X-Google-Smtp-Source: APXvYqwqyp2j7jC+zXb3peHdQkKi92JRFE9ELC3g3KpFTsWy2+W3N89QzD6RYzitxUdnaM61BVrtQC+XcEYNqJAw1+M=
X-Received: by 2002:a05:6638:cf:: with SMTP id
 w15mr33153968jao.136.1561477575688; 
 Tue, 25 Jun 2019 08:46:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
 <CA+E=qVfuy-UYUWujYC8fG+Os4tefPdYzFECkZZdoctvmiSMzcA@mail.gmail.com>
In-Reply-To: <CA+E=qVfuy-UYUWujYC8fG+Os4tefPdYzFECkZZdoctvmiSMzcA@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 25 Jun 2019 21:16:04 +0530
Message-ID: <CAMty3ZBr3oy1PxQ3C6fLQZAfPR3Dio7pX0m+y7LApAMQr5gbkA@mail.gmail.com>
Subject: Re: [U-Boot] [PATCH v2 00/99] ram: rk3399: Add LPDDR4 support
To: Vasily Khoruzhick <anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_084616_796750_D8EF4E14 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: YouMin Chen <cym@rock-chips.com>,
 U-Boot Mailing List <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Akash Gajjar <gajjar04akash@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Vasily,

On Fri, Jun 21, 2019 at 5:58 AM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> On Mon, Jun 17, 2019 at 12:37 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > This is the v2 set for supporting LPDDR4 with associated
> > features, wrt to previous series[1].
> >
> > Thanks to
> > - YouMin Chen
> > - Akash Gajjar
> > - Kever Yang
> > for supporting all the help on this work.
> >
> > On summary this series support
> > - Code warning and fixes
> > - rank detection, this would required to probe single channel
> >   sdram configured in NanoPI-NEO4
> > - LPDDR4 support, tested in Rockpro64 and Rock-PI-4
> >
> > Changes for v2:
> > - handle LPDDR4 code as part of CONFIG_RAM_RK3399_LPDDR4
> > - support data_training and set_rate via sdram_rk3399_ops
> > - add proper sys_reg_enc macros
> > - add new patch to rename variable sdram_params with params
> > - fix few commit messages
> >
> > patch 0001 - 0034: fix code warnings, prints, new macros
> >
> > patch 0035 - 0052: rank detection, sdram debug code
> >
> > patch 0053: use DDR3-1800 on NanoPI-NEO4
> >
> > patch 0054 - 0094: lpddr4 support
> >
> > patch 0095: enable lpddr4 in Rockpro64
> >
> > patch 0096: enable lpddr4 in Rock-PI-4
> >
> > patch 0097: LPDDR4-100 timings
> >
> > patch 0098: Use LPDDR4-100 on Rockpro64
> >
> > patch 0099: Use LPDDR4-100 on Rock-PI 4
> >
> > Size (increased to ~3KiB ):
> > - Puma RK3399 (u-boot-spl-dtb.bin):
> >   before: 115644 after: 118744
> > - NanoPI M4 (u-boot-tpl-dtb.bin)
> >   before: 41873 after: 44909
> >
> > Travis-CI:
> > https://travis-ci.org/openedev/u-boot-amarula/builds/546597944
> >
> > Repo:
> > https://github.com/openedev/u-boot-amarula/tree/rk3399-lpddr4
> >
> > [1] https://patchwork.ozlabs.org/cover/1113893/
> >
> > Any inputs?
>
> Was it absolutely necessary to split these changes into 99 commits? I
> believe at least some of them can be squashed. Reviewing 99 patches
> isn't feasible.

Squashed, I'm not sure because the patches were created to satisfy the
bisectability and travis-ci, if you find any please feel to comment.
About the commit count, I have mentioned in v1, the idea of having
many commits in one series to have all lpddr4(-related) changes in one
place and also all the commit has incremental approach of supporting
rank detection and lpddr4. If require I'm open to sent next versions
as multiple series, no problem on that.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
