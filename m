Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6531393FD
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 Jan 2020 15:52:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjOzyvjnmFLm0cRh+ET5x1XG9eRz3BHkRn7YBE+9Qhk=; b=tTjRoRgDLzDRBk
	rERAG0Cfp/v9wd6AhdiDXj5se0qaOcMGZ9i7zde2F4JxLp0GwnSca4KUQDGE5ksLFMsHsb2o1yiYB
	+e3sYdEGn4p28YKsg/MNylw72VdhhryCeydG+zLnyIYIyFw6/VJfgl7zjot7srMMd8Tbl+xW2efzu
	+LfZORzJQiubTUUswXXbpYJPHRf4mQ1830UMEHDtcnkz52GX6uiOTj6KucMUS522g3yobL1TKsvUj
	zDuB9t55LdNp4sMJbLCGwvAC2sbvF2dKhUbV23N3mZFTcIqJlFVuYN4aa+TRPlevp6Trsznrfsbcg
	SC9RxL+8RaaUJ8KP5gsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir14Z-0000fw-RY; Mon, 13 Jan 2020 14:52:07 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir14X-0000er-1E
 for linux-rockchip@lists.infradead.org; Mon, 13 Jan 2020 14:52:06 +0000
Received: by mail-il1-x141.google.com with SMTP id c4so8375604ilo.7
 for <linux-rockchip@lists.infradead.org>; Mon, 13 Jan 2020 06:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YX2j6/aVYY0oyXSlbbCOKmU+Ff+R7PXUUFucGLtqEZc=;
 b=pD54b2vF0OL3APyGS2FYWquHYvbSHt2+mDz0qqZYJVJKS4xrJEU3kGi9UQAQui03aP
 oPxoThY+/eB3UiBL63ipXM0eyzZW8Yg0WvXiVe14BeqC2dBJOMA1D13T+viEgaShwfCC
 3+jdDcJxFZ9PUdbfKr5VlpJoAwdcMnZ8RbUGYKR8e8sAW6tmzASNLJWHVEsPQXp7FuSM
 gr4Emm85qKxkNitHkdeoE4GZSIEw92HAjxpXIDhle9/Mu6BEsx/pllKJnyvmPECsU9/K
 v654FIVxSz5HuaQOfKF55qNMUIQyTqQ6Sm0Sg4m+MEW4COFiwkyeZoTAYhDgwE7NjKT2
 LXCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YX2j6/aVYY0oyXSlbbCOKmU+Ff+R7PXUUFucGLtqEZc=;
 b=EywIznQ7WrgKGvsfRGJG93ncGYFfOmMuZFUXLc59tktIZAK6WC+t1TsR3sIBHnV36z
 olOUnE0Y+o3x8Cc/CgNDUOLCSgHCSJI6OEEvav/7p+mnFpLQUZINrOrLQwSnhrv/BjSu
 Q1jXw1EMP6fBPT63LwpPXWR/N+HjbzSuXmy3hpW5Os15g//mCzB+AzF+vvY+KiCInrV8
 JicLtKYMbWkTxSyDoYGBn2P/A/9XtOj+DJBgzVtnMl/WnOL5Fl5ezsfk1FxrrjT4KALY
 I3oFSavwC++yWdOBiEEF1gBTu+kNpI8K27E+Z7GCtpHLGc9Nrv5jywMLK+dkjUpn7hOT
 p4eA==
X-Gm-Message-State: APjAAAWQmzCYqViUBJJ5jsHgUNdHmoZ7MmUSvwkZ2z5HYWNk5JvLx49d
 laujxYwrUPRb3Ogd+g4GwDuXo51U7/AnOwv5Il8=
X-Google-Smtp-Source: APXvYqyt+vEO+HWXZFJbDJmsViNsAKH88qGkQ/e/5oAuQgR33TSr56D6tCedpeUHpa+P2JqBu9+hmpBQr0J05fwog3s=
X-Received: by 2002:a92:390c:: with SMTP id g12mr14496630ila.246.1578927123873; 
 Mon, 13 Jan 2020 06:52:03 -0800 (PST)
MIME-Version: 1.0
References: <cover.1578789410.git.robin.murphy@arm.com>
In-Reply-To: <cover.1578789410.git.robin.murphy@arm.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 13 Jan 2020 20:21:53 +0530
Message-ID: <CANAwSgTTx3TvtxWgp1E3LW15ejc06v7jiKg7xg_95GwuuVtb+w@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] mfd: RK8xx tidyup
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_065205_075945_665A7020 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 Lee Jones <lee.jones@linaro.org>, Linux Kernel <linux-kernel@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Robin,

On Sun, 12 Jan 2020 at 07:25, Robin Murphy <robin.murphy@arm.com> wrote:
>
> Hi all,
>
> Here's a second crack at my RK805-inspired cleanup. There was a bit
> of debate around v1[1], but it seems like we're now all happy that this
> is a reasonable way to go. For clarity I decided to include Soeren's
> patch as #1/5, but since I've rewritten most of my patches I've not
> included the tested-by tags.
>
> Robin.
>
> [1] https://lore.kernel.org/lkml/cover.1575932654.git.robin.murphy@arm.com/
>

Despite the i2c warning message  it performs clean shutdown. So Please add my

Tested-by: Anand Moon <linux.amoon@gmail.com>

-Anand

> Robin Murphy (4):
>   mfd: rk808: Ensure suspend/resume hooks always work
>   mfd: rk808: Stop using syscore ops
>   mfd: rk808: Reduce shutdown duplication
>   mfd: rk808: Convert RK805 to shutdown/suspend hooks
>
> Soeren Moch (1):
>   mfd: rk808: Always use poweroff when requested
>
>  drivers/mfd/rk808.c       | 139 +++++++++++++-------------------------
>  include/linux/mfd/rk808.h |   2 -
>  2 files changed, 48 insertions(+), 93 deletions(-)
>
> --
> 2.17.1
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
