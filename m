Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C87AB169B7
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 19:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ktkzy+2lmXB/CmhR+O4/RNOILbcMqr80o8qUi7qHGGU=; b=o4bhbmuVIEFpqf
	xNTdtAJHJEyZiiFRhT2u6wyr6LfYTnD0NKRq679jFK1KoffxoFEqpFoSvUqJMptTQJfI1WmSi+bib
	oPzdkHOOwafvpUcjwPQljtImRjLoLFZWpZ2lMYt4Jvbn6FDwHkzsLW6w5CCcrf3rKHTPkL1OASePN
	LdDK2uSv/pqppQe1nqyAVBGFiqNehPjvpmuelrQtLAzw7iyfP+UnOlmTMyMoDolvp6XU/wZM3/CAu
	CP/PgX6eUCHawSf74Vty9KDa01mx2faVAImU8VjrFxkBYUV5C2CsF4E0yRMY8mQNVd1Le/bYBKQl2
	UcG+6erRDTS4akRtyCfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4Nc-0001iR-1d; Tue, 07 May 2019 17:59:52 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4NZ-0001hk-36
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 17:59:50 +0000
Received: by mail-vs1-xe41.google.com with SMTP id g127so10960385vsd.6
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 10:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=erYdJxIPox6sV/Bs4ocyYAGH0EzEi1bZw38BN9dh4mg=;
 b=SJsG8hMiPuUX5vZRJ32cUgkrqQGCuurTTXLZTPAVZYgIvxlKCuqCjtqPXXYocJTAYT
 2vTDF00bAW8tEJ5n4KcrBDi5dBuA+rlZ3pB7ovwYwYkHcjj8dct/DcYduXfYd1WatRjH
 UifQVUqQIzvJZWPNo9tkM3Q/cExzJhPKWZfMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=erYdJxIPox6sV/Bs4ocyYAGH0EzEi1bZw38BN9dh4mg=;
 b=GVJGuLwLf9kSs9bX44jxrjZLFkhSt2/+AmiaVW35enMNa9J5h5o0EFJgjuKbMzPzNh
 3asZ8pIRnHiQojqhJGxh6VK0iDQscaGYJNVTbO65WVScnviR6+QSUghtcbkJJPZhPOk1
 vGWetWIUjlnwe32Ol6Oov4flucGWmHauhHWEKSmMndfkFoFskWpR4j05cl1oRbkhmqv/
 O5BXKD+QnFlnc0scnkuiNCVQdHIffMZH3fOxeAT3nr0JkrTODpM7N9pj7YnOUOGYqrw/
 TiY40VD1zPppEstSYF0myoL8DExNALlcdJNGOqjR1FXmBXgwUpfQIWR04hYrj8AV9qHb
 nCIg==
X-Gm-Message-State: APjAAAVIwOWOsoQda3LOIJlBzxFpRPWMGd6Os1GXmiJ5DOlmr9I9j69E
 T/HoBHXkwybh7knmEyir7Qwhd5Yi2sQ=
X-Google-Smtp-Source: APXvYqyl0XejQVWYxwt6V672d9RDAJOhoSEoG1pRbyey8xhzBmiWu5LWFqtSSVMgzahv6NyA+ymyXA==
X-Received: by 2002:a05:6102:cd:: with SMTP id
 u13mr9156306vsp.151.1557251986825; 
 Tue, 07 May 2019 10:59:46 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com.
 [209.85.217.42])
 by smtp.gmail.com with ESMTPSA id f73sm3311594vsd.1.2019.05.07.10.59.44
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 10:59:44 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id e2so10951009vsc.13
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 10:59:44 -0700 (PDT)
X-Received: by 2002:a67:af10:: with SMTP id v16mr11808347vsl.149.1557251984138; 
 Tue, 07 May 2019 10:59:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190507044801.250396-1-dianders@chromium.org>
 <a3573253-e3de-0a82-8af3-6bacea20bd97@gmail.com>
In-Reply-To: <a3573253-e3de-0a82-8af3-6bacea20bd97@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 7 May 2019 10:59:31 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UAFUH12DbA++HML75E55BCttpNBxe9t-VEQvGjGx0=Wg@mail.gmail.com>
Message-ID: <CAD=FV=UAFUH12DbA++HML75E55BCttpNBxe9t-VEQvGjGx0=Wg@mail.gmail.com>
Subject: Re: [PATCH] of: Add dummy for of_node_is_root if not CONFIG_OF
To: Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_105949_155888_28233CE9 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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


On Tue, May 7, 2019 at 10:52 AM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 5/6/19 9:48 PM, Douglas Anderson wrote:
> > We'll add a dummy to just return false.
>
> A more complete explanation of why this is needed please.
>
> My one guess would be compile testing of arch/sparc/kernel/prom_64.c
> fails???

Ah, sorry.  Needed for:

https://lkml.kernel.org/r/CAD=FV=Vxp-U7mZUNmAAOja5pt-8rZqPryEvwTg_Dv3ChuH_TrA@mail.gmail.com



-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
