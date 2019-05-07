Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2ACE158A3
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 06:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2E7ayi5oKforfbKeQIU428kKs2jNDqWKtL+OkC8t7ss=; b=G6+LDZet62CZ1f
	JeKS2JD5wLd/1LZjj5iWXQFPC3iEmwCpzCD9vS6+5FlNos1CWTlvblrndo5Ksttn72wWNge4rkc0a
	YAprV6KYTjIYfhRI5z6Xcx3O5KC0aqzYKgKYphhpaEuN+GNbZTQcYIOOhN1AMI/wFkn6hiy9WzPN/
	SIvsqrFKJI9r9yDcITDn8Hpd2Sgj+jGRXB33il9ermcWR+mdT0UzYyfbtZviQz5MjRBjojKobVaEb
	j3ToMtJGJbb7nUr9dGCO+0L1HrDCy0UCYryZttjQRNS2WiTO/b6hN3AH4Tp+dwwJascjDfeHUK9K6
	lG/c8tIhWZDKrdWQSIYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNs4q-0002ST-0a; Tue, 07 May 2019 04:51:40 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNs4m-0002S9-ME
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 04:51:38 +0000
Received: by mail-ua1-x941.google.com with SMTP id s11so1817301uae.7
 for <linux-rockchip@lists.infradead.org>; Mon, 06 May 2019 21:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X6LuiDNx04tqP5yfdc2qbmlwjeob10O4SM7rIq3ikqs=;
 b=SRUggtVmJcYwtmhLPmHly4X8QR3bVq2tyyxSAMdeVDE8KlSjalza9otjVaeOabJfCz
 WlHbVUTq2EDvuC+7v55hM1jB6lHvB2hnuUg2vGh3+JpGUxpAluBtwY8WG4kqmJIeSmqW
 D1/PltZ7N+0URekiaUlcAd4pAEZOOnHQOHxjI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X6LuiDNx04tqP5yfdc2qbmlwjeob10O4SM7rIq3ikqs=;
 b=E3wUTfRhxEWTiPtQ54o+pxxd9W8C6Wk94j5MCY3B2HeVq2y8xWGT87Bz3uDX1aeC6R
 EBzPh/PuY+mPVmTlZdn1+3KATwj2Xg4HPeK3YE5/IBXKyxDzhDwybAq7PV5Xg89/PSiC
 uunK1+3rkMIQLW7wq2wE0Rh/Qwon5jMcjYFMCU6ABwIPicpcDSZvRxT10czR3xcmFM/i
 S6isO9nyR4p86pgnRNDUT/CaoHelBR3RIeQWHj6QZz91XRnT9num/85vr+ILWqMQzcej
 ihUwj1ENPBLHOns6L2ys2/6n1b4lLH6nztAw2m1eX1Pd2l3bsxD10NW6vsWXYnUjuDoG
 HbXw==
X-Gm-Message-State: APjAAAUGZrug2PYXAtBj09RxB3TWy4S+N14qDhYpVI5L7bD4Y87beBWy
 OQE9Nlyax9fQhUI0ve+va3vTjQj6rE0=
X-Google-Smtp-Source: APXvYqzgDgboNMUl3prxHSOmYUrqCpJ7IiGunH7g43rIlVpOVemGB4Q6OCZsORxxNBZFz3xfXGDvLg==
X-Received: by 2002:ab0:30a1:: with SMTP id b1mr3700174uam.104.1557204694723; 
 Mon, 06 May 2019 21:51:34 -0700 (PDT)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com.
 [209.85.222.48])
 by smtp.gmail.com with ESMTPSA id p23sm1439880uao.2.2019.05.06.21.51.33
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 21:51:33 -0700 (PDT)
Received: by mail-ua1-f48.google.com with SMTP id f9so5529972ual.1
 for <linux-rockchip@lists.infradead.org>; Mon, 06 May 2019 21:51:33 -0700 (PDT)
X-Received: by 2002:ab0:2709:: with SMTP id s9mr13716726uao.21.1557204692851; 
 Mon, 06 May 2019 21:51:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190503174730.245762-1-dianders@chromium.org>
 <CAGXu5jL9cJ+8scZ+Cg9yqdc9+rb563xs-qVjXXuPRJYjNa4Y8w@mail.gmail.com>
 <CAD=FV=WcjfUwH62bHVELOmzViv7d329r6+HfPqAyXMjKCO7LeQ@mail.gmail.com>
In-Reply-To: <CAD=FV=WcjfUwH62bHVELOmzViv7d329r6+HfPqAyXMjKCO7LeQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 6 May 2019 21:51:20 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vxp-U7mZUNmAAOja5pt-8rZqPryEvwTg_Dv3ChuH_TrA@mail.gmail.com>
Message-ID: <CAD=FV=Vxp-U7mZUNmAAOja5pt-8rZqPryEvwTg_Dv3ChuH_TrA@mail.gmail.com>
Subject: Re: [PATCH] pstore/ram: Improve backward compatibility with older
 Chromebooks
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_215136_728755_0D194D3D 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>, Brian Norris <briannorris@chromium.org>,
 Tony Luck <tony.luck@intel.com>, Anton Vorontsov <anton@enomsg.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Colin Cross <ccross@android.com>,
 Guenter Roeck <groeck@chromium.org>, Julius Werner <jwerner@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Mon, May 6, 2019 at 4:58 PM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Mon, May 6, 2019 at 2:10 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > From: Douglas Anderson <dianders@chromium.org>
> > Date: Fri, May 3, 2019 at 10:48 AM
> > To: Kees Cook, Anton Vorontsov
> > Cc: <linux-rockchip@lists.infradead.org>, <jwerner@chromium.org>,
> > <groeck@chromium.org>, <mka@chromium.org>, <briannorris@chromium.org>,
> > Douglas Anderson, Colin Cross, Tony Luck,
> > <linux-kernel@vger.kernel.org>
> >
> > > When you try to run an upstream kernel on an old ARM-based Chromebook
> > > you'll find that console-ramoops doesn't work.
> > >
> > > Old ARM-based Chromebooks, before <https://crrev.com/c/439792>
> > > ("ramoops: support upstream {console,pmsg,ftrace}-size properties")
> > > used to create a "ramoops" node at the top level that looked like:
> > >
> > > / {
> > >   ramoops {
> > >     compatible = "ramoops";
> > >     reg = <...>;
> > >     record-size = <...>;
> > >     dump-oops;
> > >   };
> > > };
> > >
> > > ...and these Chromebooks assumed that the downstream kernel would make
> > > console_size / pmsg_size match the record size.  The above ramoops
> > > node was added by the firmware so it's not easy to make any changes.
> > >
> > > Let's match the expected behavior, but only for those using the old
> > > backward-compatible way of working where ramoops is right under the
> > > root node.
> > >
> > > NOTE: if there are some out-of-tree devices that had ramoops at the
> > > top level, left everything but the record size as 0, and somehow
> > > doesn't want this behavior, we can try to add more conditions here.
> > >
> > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> >
> > I like this; thanks! Rob is this okay by you? I just want to
> > double-check since it's part of the DT parsing logic.
> >
> > I'll pick it up and add a Cc: stable.
>
> Hold off a second--I may need to send out a v2 but out of time for the
> day.  I think I need a #include file to fix errors on x86:
>
> > implicit declaration of function 'of_node_is_root' [-Werror,-Wimplicit-function-declaration
>
> I'm unfortunately out of time for now, but I'll post a v2 within the next day.

OK, it needs this to land first:

https://lore.kernel.org/lkml/20190507044801.250396-1-dianders@chromium.org/T/#u

I thought it'd be OK to just send a separate patch.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
