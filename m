Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02ACB17D86
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 17:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqjJ8EVSN9CpLkiWE9YcBgFY0Z+yUImQCaiMTJHVwII=; b=uuRcM5NJ5eDdW6
	jvMMN87Lu1dliyWR5QK+BIZ20miBXKfUnioFO7QiLnqUJa0d0yI5QNeGMiiO5nj/36ijZyIUJok4w
	XYVaAcy9y5Qwr6ndesP7hBzfVEsdZf5cQjUGqYXN05ll5mRTvYoi1mWgpfVLmSuqZz2E+F8dXIYzW
	SrrTE4yCFetYzSukef/AWkXt3O9gYs0GNmfZD3LuUpxD6uFpzQ6ul3NKRn9IWXZu+mh4Zfp4AcnUD
	zj7ZD+Zc5yQWj58PRFrHc5zzU2XlImSMhJhRBkOhuVIguDadYszMUW0jVmJuGqSRwqEJw7nLwzoZs
	F3GbQWJndGdY2KUvP7Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOOqt-0003hS-Ns; Wed, 08 May 2019 15:51:27 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOOqq-0003gV-0K
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 15:51:25 +0000
Received: by mail-vk1-xa43.google.com with SMTP id g195so2475642vkf.5
 for <linux-rockchip@lists.infradead.org>; Wed, 08 May 2019 08:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t0+i9e5mIEn3rqSN9LgCUbC0Q8KXmle2bNSZz9uk/D0=;
 b=dHartrG0pnAxze09Q/OtM6IG1uxSV/PvDV9j0oxDlVKKb2h7aaldV397hX1Mq/x86e
 zwPrwM9sTsbPUgkg6dmMgn+4qgx+Bpio+OUc54RUBEcp+4qBLiA/e55Sw1L1KXOMz4x7
 S8RKLl7jH8js3Gyn95doc2ozC39rKeKL5orTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t0+i9e5mIEn3rqSN9LgCUbC0Q8KXmle2bNSZz9uk/D0=;
 b=PB/HL5kIJkeTZoNFcPFYXpBb1ruarTq69rmawyG9Vlzis99CqzJ8/XObhi/HBbTAok
 Xiw2KZfR3GKJVzqCCC9U/j1zTg7Yhz4dltwOAV4Fzub65hu8r3FxTXD9+0u42zZgJAq0
 oQ0O8E18e80K03rERRFcEvKEGLeN6I3RdgmttStTLsySyIaNkZ2QKttAtgLkJ618u1bK
 cIJiptlu2hqEBTUimieDISYgRTHBnDYlOTyCbfSJdGcHL3S93tu6dd8yrpbZ/fCmuhhZ
 Idr2W/i2NRpuidyQeyd7AgJXLRci6bggaSF6650FKgIjumdbKNWRkBruIHTQKk9kLX3m
 q6OQ==
X-Gm-Message-State: APjAAAV641CrNl2/7C1ZdCEM9/QWmko+Ew6oiuPxiYOf4/HNUaiVtsRz
 hYXTCU2eiAQ5f8rcFind7IpKJ20v0yM=
X-Google-Smtp-Source: APXvYqz39t7mF6uFHMOlNRzmPxoW4j7MRB5vvVUlvw8MOmOMTQjw4I8Err2krEZU6G91L2KZ93ONGQ==
X-Received: by 2002:a1f:d406:: with SMTP id l6mr4995704vkg.78.1557330682325;
 Wed, 08 May 2019 08:51:22 -0700 (PDT)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com.
 [209.85.217.47])
 by smtp.gmail.com with ESMTPSA id d9sm3212332uab.20.2019.05.08.08.51.20
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 08:51:21 -0700 (PDT)
Received: by mail-vs1-f47.google.com with SMTP id o10so12936898vsp.12
 for <linux-rockchip@lists.infradead.org>; Wed, 08 May 2019 08:51:20 -0700 (PDT)
X-Received: by 2002:a67:79ca:: with SMTP id u193mr20090469vsc.20.1557330679806; 
 Wed, 08 May 2019 08:51:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190507044801.250396-1-dianders@chromium.org>
 <a3573253-e3de-0a82-8af3-6bacea20bd97@gmail.com>
 <CAD=FV=UAFUH12DbA++HML75E55BCttpNBxe9t-VEQvGjGx0=Wg@mail.gmail.com>
 <18324244-cca8-a836-5c2e-c626ca8771aa@gmail.com>
In-Reply-To: <18324244-cca8-a836-5c2e-c626ca8771aa@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 8 May 2019 08:51:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WFNjvm9Swe_jRO1X3yn-OV596_4yhA9m_yD4Coq1qTWw@mail.gmail.com>
Message-ID: <CAD=FV=WFNjvm9Swe_jRO1X3yn-OV596_4yhA9m_yD4Coq1qTWw@mail.gmail.com>
Subject: Re: [PATCH] of: Add dummy for of_node_is_root if not CONFIG_OF
To: Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_085124_049438_0BB33888 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Brian Norris <briannorris@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Guenter Roeck <groeck@chromium.org>,
 Julius Werner <jwerner@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Tue, May 7, 2019 at 3:17 PM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 5/7/19 10:59 AM, Doug Anderson wrote:
> > Hi,
> >
> >
> > On Tue, May 7, 2019 at 10:52 AM Frank Rowand <frowand.list@gmail.com> wrote:
> >>
> >> On 5/6/19 9:48 PM, Douglas Anderson wrote:
> >>> We'll add a dummy to just return false.
> >>
> >> A more complete explanation of why this is needed please.
> >>
> >> My one guess would be compile testing of arch/sparc/kernel/prom_64.c
> >> fails???
> >
> > Ah, sorry.  Needed for:
> >
> > https://lkml.kernel.org/r/CAD=FV=Vxp-U7mZUNmAAOja5pt-8rZqPryEvwTg_Dv3ChuH_TrA@mail.gmail.com
>
> Got it.  I went and looked at that.  I think a better approach would be to
> check parent node not "/reserved-memory".  I am making this suggestion in
> that email thread.

OK.  Assuming that people are happy with that approach [1], we should
consider this patch abandoned.  Thanks for your reviews!

[1] https://lkml.kernel.org/r/20190508154832.241525-1-dianders@chromium.org

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
