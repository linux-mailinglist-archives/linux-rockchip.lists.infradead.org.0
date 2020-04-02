Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 746AB19C143
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 14:40:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PYLQKCECWjcfz1KhuAvzU2DVDKpolOR0cHu0HxchdLE=; b=i+8Ripz+G8hpKs
	UlqK6sotiBbT8fFxotaIncysHEn+/b1rTuG5dujmHjjwVxvVQ7jwczkykKYBWUhrI8tfFhKf2rFHs
	2fKHIaIAHLds/th2HBXV8j4BUL5xhyyCxDbEryzr5QWOPcQlZzN2h6NK954e3Tg1LflbAVCvD71hy
	NeodPdSNBLewZYe4OkTXX3TeJQ1y6PPJeb091fLIgInE121cPiip6lYatKJnHQhIIh6Avf83sWdD/
	VCXepcUf/uvm9FMnFUqy2CZHowSYHajf6TNu8ee+8xocK+ZoPnHnY2w45teLI3Y52NGf8oVUo8mib
	t8WdRlDg1E+2nRv+7VuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJz8n-0006st-F1; Thu, 02 Apr 2020 12:40:13 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJz8j-0006BB-UT
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 12:40:11 +0000
Received: by mail-il1-x144.google.com with SMTP id a6so3416949ilr.4
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2020 05:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5EfIHxEqMnx16JfL1ujLukp63wummDLEmRbcR2NzEQM=;
 b=tvj30Wni+NZwMtQg76jvDP70yD+SlMWgCxnvCxynuuCujK17dg2Vnz6M6g92PgLTMe
 JLr8+jW0o3OFET5J6QzCMHh3g7QzLt5dX7ZCbEWHFhmiw4MO0xxZa5bDpmBhQ9IwO4CE
 /ZVj0JVrl4cB8IASf9PgASOPX7Qb9wPptU8MbKUAhQ0jKFxYusGZfvQhd7dFJoW3oFzg
 jq5LWcTbi/+Hzbb+Dg2iMEs+Bmiq6qLFJe0TGZCdjmTont37Q04sfZR/AVKH2Cw20SGz
 uo6e2XgXOhkrw7xMTcwYv4nkKBZfpdo9aZi4mQO+Uu3ROo54dU+4xtknW6VVHYUo6lX2
 WJAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5EfIHxEqMnx16JfL1ujLukp63wummDLEmRbcR2NzEQM=;
 b=Dip6F/dt6BLjoncuw1Pl23onwjsJCLKrSAEmsnnj75BZL3xBpzrLk5OxhGA6TJwa1B
 I+Hmo4qO4jsC7xLipGZ5YZ7r61L1O6nGJgO8YRz24+3IXgys4wal2MONKnN8zP5obbaV
 bltiWJANSK1vnX2mBnh8D5OpxFwcHUJJ32yN4fOeqd61y1mouno/5FkVx8Ps1GjQY8ED
 y5pV7tgJJPvmge2Ur4VTl+TZxT28EPt0Tq8CJfHlG3iQeXEB0+6VEAoZEp5N0cHK8wpI
 q1ghwe1r503qKdjx93KHQkjQWGTXDa/0bkw6H3jSRyrMzT3nyVz3GtDmyh2+fbFUnhAE
 Uwew==
X-Gm-Message-State: AGi0PuZ4mOAmN1KOBZt/hvhqH/C90LkTDGWKft0lmsOjE40OkjeGOrzH
 Qi4HR1d629ZIhK3UZzGg/GYCeyJqu9QaoWqd4IuUhYWZXZY4mg==
X-Google-Smtp-Source: APiQypIR1AcA+jQpCU5CHlQHSmFOG/74362YiCRj6k3fIJCfW2l6nz1LlCX7J+XdA7ca19xFnuEZx7aOaMTynfzdTb8=
X-Received: by 2002:a92:5b51:: with SMTP id p78mr3003308ilb.250.1585831208892; 
 Thu, 02 Apr 2020 05:40:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
In-Reply-To: <20200402114125.2501-1-jagan@amarulasolutions.com>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Thu, 2 Apr 2020 13:39:56 +0100
Message-ID: <CALeDE9M5PfLmpuVwQnkZE82Sv6HpczyevSxMa9roBh5CkxNNNg@mail.gmail.com>
Subject: Re: [PATCH v3 0/5] rockchip: rk3399: Fix HDMI out
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_054010_004570_9ABA0A7C 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pbrobinson[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de,
 sunil@amarulasolutions.com, Anatolij Gustschin <agust@denx.de>,
 linux-amarula@amarulasolutions.com, Mark Kettenis <mark.kettenis@xs4all.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Apr 2, 2020 at 12:41 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Due to recent Linux dts(i) sync for rk3399. the existing
> vop driver is not working with HDMI out on RK3399.
>
> This is v3 patchset, for previous version fixes[1].
>
> Changes for v3:
> - handle vopl clks in clk driver
> - drop dts changes
> - fix 4K display out for rk3399
> Changes for v2:
> - use usbkbd as stdin
> - enable USB Keyboard
>
> [1] https://patchwork.ozlabs.org/cover/1264187/
>
> Any inputs?

This series works for me for display output on the Rock960, I had
tried one of the prior versions with it (I think v1) and it had caused
issues but the display comes up and outputs on HDMI for me so:
Tested-by: Peter Robinson <pbrobinson@gmail.com>

> Jagan.
>
> Jagan Teki (5):
>   clk: rk3399: Set empty for vopl assigned-clocks
>   video: rockchip: Fix vop modes for rk3399
>   rockchip: Enable pre console for rk3399
>   rockchip: Enable HDMI output on rk3399 board w/ HDMI
>   video: rockchip: Support 4K resolution for rk3399, HDMI
>
>  arch/arm/include/asm/arch-rockchip/vop_rk3288.h | 11 +++++++++++
>  arch/arm/mach-rockchip/Kconfig                  |  1 +
>  common/Kconfig                                  |  1 +
>  configs/nanopc-t4-rk3399_defconfig              |  7 +++++++
>  configs/nanopi-m4-rk3399_defconfig              |  7 +++++++
>  configs/nanopi-neo4-rk3399_defconfig            |  7 +++++++
>  configs/roc-pc-rk3399_defconfig                 |  6 ++++++
>  configs/rock960-rk3399_defconfig                |  7 +++++++
>  drivers/clk/rockchip/clk_rk3399.c               |  7 +++++++
>  drivers/video/rockchip/Kconfig                  |  2 ++
>  drivers/video/rockchip/rk3399_vop.c             |  2 --
>  drivers/video/rockchip/rk_vop.c                 |  4 ++++
>  include/configs/evb_rk3399.h                    |  5 +++++
>  include/configs/rock960_rk3399.h                |  5 +++++
>  14 files changed, 70 insertions(+), 2 deletions(-)
>
> --
> 2.17.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
