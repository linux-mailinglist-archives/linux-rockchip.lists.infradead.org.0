Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5352C34024
	for <lists+linux-rockchip@lfdr.de>; Tue,  4 Jun 2019 09:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YCDq7KmqjkIwGKbPdnKHRXzapbLTBOlgyY3IQtOUG6o=; b=JA0NR6+GrHKfVz
	bKhT+w/hjAzhfrnit11F2Jl4JYQTIOseg8fHd7gm9VtLtfgwHxHh7iTKKdiDbmT9qRoaUuL56JZFG
	zV2qCb1TozjDi4LLhK7/fMHxeVVlfvLbHf2P+VH7B7Rbr+z6SLKIdZxzA21JmNWGFq/cG0rXGHIGM
	BiLTHDQNQKPw+CcjAkUbtYf0pGTDsVn7JJCfTBK5BwEFSntn2NUaHSC03Pi+gK7vO1W/PPPslhuR9
	EajRzNsabm8MB4dLkl3jjsjgmNoMTHq/EvXo8DpIC7pvOh7SbEHHlSAFTRwSLK2UtQ3DqHJMmyREq
	bXNBevawe3YN6tsaY0JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3uh-0002IZ-67; Tue, 04 Jun 2019 07:31:19 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3ud-0002Hq-Eb
 for linux-rockchip@lists.infradead.org; Tue, 04 Jun 2019 07:31:16 +0000
Received: by mail-ua1-x943.google.com with SMTP id l3so7321907uad.4
 for <linux-rockchip@lists.infradead.org>; Tue, 04 Jun 2019 00:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=liKHPncWOckMU0VpUC12b4lHB8RDKVamTsMkqWq9QS8=;
 b=pBWhAx1YgC0xfBUniJ64GQxUiO+aAT1hfrtvJ3NHp7giCrOXogoNhXvDhHaneh0wvt
 3LNcd2E9BBt5jRT4Hh8q2/pxIP4n/6QfNng62w1L9Na2TniGZKWcRbo45voYqcLguccz
 qTv55JDhWIHfY4Jjl/P53uPtQVNQvtfOIfjbbEuWh3fQngdSz5k1sa4NaQ9+DC8012Ot
 DDHkh4Lew+iPe8KLIZymjj1fOf3tinN0ERo6InehQK22Mppo7htd85X5kdeew7KW6n3W
 jRvG/NNzn4+76SVcU9CeRQDGRV4PFWOKQwiyV4dMGkr4o0CY1yjM9KtiObPKEYD9IBt9
 9jcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=liKHPncWOckMU0VpUC12b4lHB8RDKVamTsMkqWq9QS8=;
 b=tuC15wrrBYK/Z/8sAQDhiEpb9jpan9HAAaPyhZ1TQ7g729b5TAHstCEp3gdvS0AGA+
 e9ES9d/OsreuzVDohWfaZriq0klmhOF1GatOeuao/LbVEnMR8qpli2cHWpnG2lbcqCCD
 JMLw8t4DCfOyji6ZYvczWEMKzJ6Aa5Uy1A70PUTPaQRmADvCJZsioq0DOQ1+ikrGwsPv
 NbdIcAUGX7yRUlfy+nsFMQNbVEfjS2bNy3lWARDCuMuu8qPd0qz2guLaUsLvouyTtB6m
 oKIk5bbrabFWNglPv6ACkMWfp8pX3R9j9+atfWORiMgRk0iOoQtPJcOF4aYDHrRsZ8ps
 gI/g==
X-Gm-Message-State: APjAAAXP0al6fAJBEFh3qCUyzSBKTc6TVlJDnCY4ioCbrMrYEtcdausd
 wBYC7yEDYSDHxSD5Ab75o/PjLWecx0tX+AYc+tCrOg==
X-Google-Smtp-Source: APXvYqwRSbtZYdCjB8whq7+U5NeLJqf4f+zeXI8CzJ2cgm83LN/kdT2cdEZ7iFkIM1drZeG9nKJsq5islj1NytCSefw=
X-Received: by 2002:ab0:5608:: with SMTP id y8mr15100647uaa.129.1559633474312; 
 Tue, 04 Jun 2019 00:31:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190429204040.18725-1-dianders@chromium.org>
 <CAPDyKFp0fQ+3CS-DadE9rO-9Npzve-nztY9hRaMdX7Pw9sUZMw@mail.gmail.com>
 <CAD=FV=XMph_CE3pFZGP+5d0K2FgbPbheF1oX72TfZn_dpf8SQA@mail.gmail.com>
 <CAD=FV=U7_ek_z7UfaDn9My8UfZfpNom04OJHowoH-sNsGZQnxA@mail.gmail.com>
In-Reply-To: <CAD=FV=U7_ek_z7UfaDn9My8UfZfpNom04OJHowoH-sNsGZQnxA@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 4 Jun 2019 09:30:37 +0200
Message-ID: <CAPDyKFoo7yyhZq8G3PzHSNnF5nWPL7Dy5a-abL-kQTP2jEt9KQ@mail.gmail.com>
Subject: Re: [PATCH v2] mmc: dw_mmc: Disable SDIO interrupts while suspended
 to fix suspend/resume
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_003115_505550_9D428688 
X-CRM114-Status: GOOD (  23.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "# 4.0+" <stable@vger.kernel.org>, Jaehoon Chung <jh80.chung@samsung.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>,
 Guenter Roeck <groeck@chromium.org>,
 Emil Renner Berthing <emil.renner.berthing@gmail.com>,
 Sonny Rao <sonnyrao@chromium.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 3 Jun 2019 at 20:41, Doug Anderson <dianders@chromium.org> wrote:
>
> Ulf,
>
> On Tue, May 28, 2019 at 3:49 PM Doug Anderson <dianders@chromium.org> wrote:
> >
> > > 1) As kind of stated above, did you consider a solution where the core
> > > simply disables the SDIO IRQ in case it isn't enabled for system
> > > wakeup? In this way all host drivers would benefit.
> >
> > I can give it a shot if you can give me a bunch of specific advice,
> > but I only have access to a few devices doing anything with SDIO and
> > they are all using Marvell or Broadcom on dw_mmc.
> >
> > In general I have no idea how SDIO wakeup (plumbed through the SD
> > controller) would work.  As per below the only way I've seen it done
> > is totally out-of-band.  ...and actually, I'm not sure I've actually
> > ever seen even the out of band stuff truly work on a system myself.
> > It's always been one of those "we should support wake on WiFi" but
> > never made it all the way to implementation.  In any case, if there
> > are examples of people plumbing wakeup through the SD controller I'd
> > need to figure out how to not break them.  Just doing a solution for
> > dw_mmc means I don't have to worry about this since dw_mmc definitely
> > doesn't support SDIO wakeup.
> >
> > Maybe one way to get a more generic solution is if you had an idea for
> > a patch that would work for many host controllers then you could post
> > it and I could test to confirm that it's happy on dw_mmc?  ...similar
> > to when you switched dw_mmc away from the old kthread-based SDIO
> > stuff?

Let me have a look and see if I can post something for you to test.

>
> Unless you have time to help dig into all the possibilities here to
> help understand how this should behave across all the different host
> controllers / wakeup setups, maybe we could just land ${SUBJECT} patch
> for now and when there is more clarity we can revisit?

That's an option. I only fear that the revisit part never happens
(because of me personally being occupied with other things).

If I not able to come up with something within a week, then I will
queue up this as fix.

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
