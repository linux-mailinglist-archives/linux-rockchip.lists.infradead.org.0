Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3345F16CF6
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 23:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8t9dnYpsgcxMOM3cVBxKZgNq5wvK/diuOocAVxsBM0=; b=ucnVdgo3LCEhH3
	4m3TV2/5oeXck12N9ysBrS3r1NI+bjoMkyPatyBoEeXeOkyNJ3Ze3LRC8PJ2J6RvjSa/ER8O3IeV+
	vBTDtXM92ETEH2iqXGX60hLQbgsr7h+UH1BgIpeFnxC3hHvW5lP9jj9mL5eZJOhTz4F2fhkjA0+q4
	pwVCHQlnmGq4V5N362IZEVbxFkIPAANXX+S0j5enzF4vdmJ1HZrkKKMzc8o6XzzM1wiZLNipyXqyu
	fw1uqMloP2l1pWELQQPdc0l1tP6ejl7QKvyQ96OYUvRGcbGarvFuD7AbI7ok2nDWIbPizyJ57UQ36
	39oENi9dwlcX+uSBAUTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO7Qp-0002Ga-38; Tue, 07 May 2019 21:15:23 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO7Qm-0002Fy-4L
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 21:15:21 +0000
Received: by mail-vs1-xe41.google.com with SMTP id z145so11328524vsc.0
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 14:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a2lxvLvuhn3MckTQU8tH5e1XuN1xhSiuOf8AgLmEt4U=;
 b=bA3OYws9T0LnjkEW1s1ii1+HmUoOWve4rct1YI1IU0n/DLHsr18ZOgpj65OtQJrwqa
 qqrXwNIQ5su/IYrYnghuX4P2yCXZFfPQjVP01AccMNAO5PMAXHkBfjao/De7S5wBRgkz
 xcI/fNoLt8kFQ12Fy13BO7XCbP0Yer7+Sl3EQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a2lxvLvuhn3MckTQU8tH5e1XuN1xhSiuOf8AgLmEt4U=;
 b=AsyWeryCpQM/rao7nmXGzDlt5cUi8z6zNw9AUf/FzFoiZrBAV3q/UIBIk9h3bqH+aI
 IUgdJP7FgArANBhcyaI/hT1DKVX9xW2HbWo9HFZ0zvaKGiiReSRo5WcrnNlG0NorKgup
 HYjohV7P1Fa+m3+JHkxFg7RazPvq/34HUycMDg/M4lx9Acct1Aml4FunSafbNDeFdgiH
 vuaAL3wnTy4lzSLLcoRZL+jU2z9PIGxSfMEitKc51+D8NyqeW7ZuAgE8GImZ8Hc9/ZK6
 42NnVSlv4xcUycJ+662p98ViRt2DUHhVg6qQ3D2VqXTwLRwPUptrFhVbNSHxVJSodFXv
 xd/A==
X-Gm-Message-State: APjAAAXDEk9C3tx8G7aD4sNIida5tPZmITrylQ0eWufsqYVxEuQsOdAn
 ZGcW3ArKSVJmkYU9BdU9OczZaqC4olU=
X-Google-Smtp-Source: APXvYqwPTctYIqypvahkQQu68+uv5Vtlni1vk+nKbUuyJGhi/+qdmew2o6nuJYqqMtfzuklcZf2oHg==
X-Received: by 2002:a67:f809:: with SMTP id l9mr8212085vso.106.1557263717871; 
 Tue, 07 May 2019 14:15:17 -0700 (PDT)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com.
 [209.85.222.49])
 by smtp.gmail.com with ESMTPSA id 5sm2937861vsq.12.2019.05.07.14.15.16
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 14:15:17 -0700 (PDT)
Received: by mail-ua1-f49.google.com with SMTP id a95so1508201uaa.13
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 14:15:16 -0700 (PDT)
X-Received: by 2002:a9f:2e06:: with SMTP id t6mr17359140uaj.112.1557263716267; 
 Tue, 07 May 2019 14:15:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190507044801.250396-1-dianders@chromium.org>
 <a3573253-e3de-0a82-8af3-6bacea20bd97@gmail.com>
 <CAD=FV=UAFUH12DbA++HML75E55BCttpNBxe9t-VEQvGjGx0=Wg@mail.gmail.com>
In-Reply-To: <CAD=FV=UAFUH12DbA++HML75E55BCttpNBxe9t-VEQvGjGx0=Wg@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
Date: Tue, 7 May 2019 14:15:05 -0700
X-Gmail-Original-Message-ID: <CAGXu5j++9LS-2aHR8CPoivT=5UUxkpUg=ZyEHfzXN8tGj8z7tg@mail.gmail.com>
Message-ID: <CAGXu5j++9LS-2aHR8CPoivT=5UUxkpUg=ZyEHfzXN8tGj8z7tg@mail.gmail.com>
Subject: Re: [PATCH] of: Add dummy for of_node_is_root if not CONFIG_OF
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_141520_176042_E98903B7 
X-CRM114-Status: UNSURE (   9.96  )
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Brian Norris <briannorris@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Guenter Roeck <groeck@chromium.org>,
 Julius Werner <jwerner@chromium.org>, Frank Rowand <frowand.list@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 10:59 AM Doug Anderson <dianders@chromium.org> wrote:
> On Tue, May 7, 2019 at 10:52 AM Frank Rowand <frowand.list@gmail.com> wrote:
> >
> > On 5/6/19 9:48 PM, Douglas Anderson wrote:
> > > We'll add a dummy to just return false.
> >
> > A more complete explanation of why this is needed please.
> >
> > My one guess would be compile testing of arch/sparc/kernel/prom_64.c
> > fails???
>
> Ah, sorry.  Needed for:
>
> https://lkml.kernel.org/r/CAD=FV=Vxp-U7mZUNmAAOja5pt-8rZqPryEvwTg_Dv3ChuH_TrA@mail.gmail.com

Should I take both patches via pstore, or should both go via DT tree?

-- 
Kees Cook

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
