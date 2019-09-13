Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF2AB218B
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Sep 2019 16:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVT+4lmiozO9xVFZ23edGsl9CCRfSmzg1qFtNsKdn2o=; b=f7JXdG5PQtQJbn
	qV3yYSk7If5yppciTwK3uyddpSD0Xt26oE4RB7/V+u3tGBtxqLAlXc0+Tg52ymZHRBpPrE9zzltVh
	FbrvDjDDqEhDYG7eA8SAeHy0gRNSnLxs8E2GOdCF3NkFcFRZTL9gAyf2sDeJXowU1T5DlbY5SAkIw
	3e1BjmC+6GlOykkn0j8uoUSTntwIaQaBrBzXIgI3kZi9OfFYqeXYWr5UQDSlaageoCyiKcW3Tk5/u
	17XKxiq8rFzMFL48gLCzGLZTDr+Oahq6wvTVh63cd3PzlXnvxsuzmhHJKH69FurJV7+C9chLUv8S/
	pm3x2sZ+1Ph+vcSiqPvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mAM-0006gy-8p; Fri, 13 Sep 2019 14:03:14 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mAI-0006gb-K5
 for linux-rockchip@lists.infradead.org; Fri, 13 Sep 2019 14:03:12 +0000
Received: by mail-wm1-x344.google.com with SMTP id o184so2934104wme.3
 for <linux-rockchip@lists.infradead.org>; Fri, 13 Sep 2019 07:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xl6McWz/Zsac5QHmA2leQ5og/HDNPSQtzI4JCozAHWc=;
 b=T9g4CRg4T0b2xYvquyoZkNk1eK72LBt2V4D9YVByyXA/2p+3eNi5skX0lVhpt7MTpo
 wqV1FoBt2G2NJHeKHGKqeWMU4xKvtpweohjftvp/B7FArGmqYsVTTEFc4U6fHxvBtLMS
 bhP9BDLoQYQmuJNwTHmwwcRoBsUobX0mOOn00=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xl6McWz/Zsac5QHmA2leQ5og/HDNPSQtzI4JCozAHWc=;
 b=RFHFdgMi1C3cMpBdu6C1fyvD42jN9oYSUkDu3Tqz0gJDZep6moSwmgJCK7abFSmisx
 B5Tr+N5W9rbvfES3gzl4JTpfe/vy1E+vZ4AN3jCuCjkL12/2Uk+hs0f9go1mmUXZ0+6m
 /wzgPAIqSAduBxc8vSAZ25ZQEsjLse1y5eNjQPlXO9M9TFITS0cqRxnTWzwv+KqFmKhB
 J1wKZtLh6VCbHrPt0zjk7Oqv2Y9IhuWke6+rJ+pjiAQXA7q0X8/0z7H8eZJY5kua1C96
 df0x8CoWXt0lXSqP0qbdILrGIoTszBgzPRsBA/j7VN+jMqy5aXYEfSV7zU15jzWKpBMc
 AWew==
X-Gm-Message-State: APjAAAU9g/ToF6bHMOydDRyv37CJL6E06bRiUhvsNs6hJjv++NsqGUYC
 ADqyKBufl3aZ3WLvoAP1EgyuCYP4qlVDUOmKHywI/w==
X-Google-Smtp-Source: APXvYqxxyuuhetCiA7+UULt8iqY+NG6JAq+Cn27Zif4JNEEAlb4QC1sJiYX+RcLzraLQbIGgnBVQ2dvDAUVAhDV7YZo=
X-Received: by 2002:a1c:608b:: with SMTP id u133mr3623054wmb.27.1568383386021; 
 Fri, 13 Sep 2019 07:03:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAMty3ZDo6Hk9swGcaZ0RNC-4KeQ=EJS9gu_-+ewmM618GHhO+w@mail.gmail.com>
 <20190913160129.0cc8bc99@crub>
In-Reply-To: <20190913160129.0cc8bc99@crub>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Fri, 13 Sep 2019 16:02:54 +0200
Message-ID: <CAOf5uwmUWXN27rNZ3JR13QSTH3NpGoODvySsCeUtrRE14Kq--Q@mail.gmail.com>
Subject: Re: [U-Boot] rk3288: HDMI out causing boot hang
To: Anatolij Gustschin <agust@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_070310_804397_71681E99 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

Hi Anatolij

On Fri, Sep 13, 2019 at 4:01 PM Anatolij Gustschin <agust@denx.de> wrote:
>
> Hi Jagan,
>
> On Fri, 13 Sep 2019 08:19:47 +0530
> Jagan Teki jagan@amarulasolutions.com wrote:
> ...
> > Any inputs?
>
> Try to input "setenv stdout serial" command on the serial console.
> There might be a chance that stdout/stdin has switched to the
> video console and the output proceeds there. If the HDMI display
> shows nothing, it appears like a hang.

It's not an hang. It's the output is not shown. I'm trying to
understand the reason

Michael
>
> --
> Anatolij
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip



-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
