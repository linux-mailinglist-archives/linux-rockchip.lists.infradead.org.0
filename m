Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0182116D75
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 00:17:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qt4EurDHT14GX2rFRIvgCUuRQ0bFQFwvtd3byV2vS6o=; b=aI+MjGuwjquHL7
	QDo5R9y/ouO/apo0qWXh5V1iSkXWN8WkNjm+E276vF7dLjhpZVjMKViXNysS0UsWsDHLRs+BG6MDE
	FIjdL4GGBetia8vY7cddDoAue9estbLuycL5fYfCb/7/vk4jrwvymAGKXtnuHbzsEpOggjyZOc2jr
	iKlzr3oS8lOJw926DPyOPnWqK6rfy4TzbQx6ng6+ZZIwlYGUuhJpTgW5/9+MapucLpNDkkw+GxMag
	tnQAdQgn+wZuYFyzxV7pECS6SLtRtZTzTPPOzfMreqLJgtfL9eKW7tEmbH34kDqjsCb9UrQ40NXno
	Nd+H66WJFvzykvzcvYMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO8PF-0005yZ-DU; Tue, 07 May 2019 22:17:49 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO8PA-0005xK-Hr
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 22:17:46 +0000
Received: by mail-pf1-x443.google.com with SMTP id z26so9368035pfg.6
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 15:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=110XxIZf7ROUEfUSzklwiJI5L7urbcXK4X6uNMzpVGE=;
 b=PjfzsWfxbR/DNi/xzPYZpmyRAEaAi7Goo6jksrwdZdU1hpa2OT78WNgDKfVRHO8JVu
 HrX7aDHflMAinidKfihXRKFJRoUQ8k7PWP7g7upZqqguFQn4QZsR2Im6kH8Dvd/hdksp
 QQ4hPUOXyvOI2zeiCMNMNwq5jFhoKIG3NdhzE01GG3nyHvDKopIR/GVuRNUleaoPvGyw
 bLgmPYzmSCYXhRqenSAWjnvSDHTZY7dhYVS5hmpqFxVIids35u12sO47XOL6frLe451t
 wRsM2YZxYB3Ou1PoANxyAGnFLmrKe6+kAS9RHU0GNU6t38Ggt6QYDF3skw3b85z8vN3C
 qfUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=110XxIZf7ROUEfUSzklwiJI5L7urbcXK4X6uNMzpVGE=;
 b=s92ebSjYSxgqwLu4ilJcuMPtGJRBI9DS+2vKNyhu3rUc4NRbLv8rcBxbz2uU4cj7Pi
 Nr4dqTdaLpKlULiwEvVu+CIv1ZUPXZS91I9cVWNbtBndrzmbATdMyjdWpNLErh4LBEwG
 +aNo7dHzkdITbdtkZuuBhZ6oRVzKJCUcPOvj/rYwCSY5vvOy0CNqCqpN5Cz4+H9fR8SS
 wYyxCFUcBKnvAchI9Vx6/50HWwa6dzc5gyCxiKLO2l5U/Qe4aOCq448Rb7QTDLbbc4Kq
 82xPIwl2c6vakW9XTnpt+ko/cU5fe8Okj9JK4yi+qqDRXE6lXJUYM0BXh64A9KrLCJJn
 mUig==
X-Gm-Message-State: APjAAAWJkr0FHvTShwAFxQmF+IqXzxriW5fdgWJNK1vYN6F08M50tNGy
 /yB1NNdqzlP+AeWWDg868XE=
X-Google-Smtp-Source: APXvYqy+wB6AQ+5yWcjxyBjQ/EnnQ0UHSs24ZHqrZOMhZzy5yZmaaArc8kh3kSLz6/U5+AGu79AMTQ==
X-Received: by 2002:aa7:8046:: with SMTP id y6mr45044759pfm.251.1557267460394; 
 Tue, 07 May 2019 15:17:40 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
 [24.6.192.50])
 by smtp.gmail.com with ESMTPSA id 132sm9044957pga.79.2019.05.07.15.17.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 15:17:39 -0700 (PDT)
Subject: Re: [PATCH] pstore/ram: Improve backward compatibility with older
 Chromebooks
To: Doug Anderson <dianders@chromium.org>, Kees Cook <keescook@chromium.org>
References: <20190503174730.245762-1-dianders@chromium.org>
 <CAGXu5jL9cJ+8scZ+Cg9yqdc9+rb563xs-qVjXXuPRJYjNa4Y8w@mail.gmail.com>
 <CAD=FV=WcjfUwH62bHVELOmzViv7d329r6+HfPqAyXMjKCO7LeQ@mail.gmail.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <30361ae7-36a6-0858-77ec-40493ef44b98@gmail.com>
Date: Tue, 7 May 2019 15:17:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAD=FV=WcjfUwH62bHVELOmzViv7d329r6+HfPqAyXMjKCO7LeQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_151744_633011_9BD8DBA2 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frowand.list[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 5/6/19 4:58 PM, Doug Anderson wrote:
> Hi,
> 
> On Mon, May 6, 2019 at 2:10 PM Kees Cook <keescook@chromium.org> wrote:
>>
>> From: Douglas Anderson <dianders@chromium.org>
>> Date: Fri, May 3, 2019 at 10:48 AM
>> To: Kees Cook, Anton Vorontsov
>> Cc: <linux-rockchip@lists.infradead.org>, <jwerner@chromium.org>,
>> <groeck@chromium.org>, <mka@chromium.org>, <briannorris@chromium.org>,
>> Douglas Anderson, Colin Cross, Tony Luck,
>> <linux-kernel@vger.kernel.org>
>>
>>> When you try to run an upstream kernel on an old ARM-based Chromebook
>>> you'll find that console-ramoops doesn't work.
>>>
>>> Old ARM-based Chromebooks, before <https://crrev.com/c/439792>
>>> ("ramoops: support upstream {console,pmsg,ftrace}-size properties")
>>> used to create a "ramoops" node at the top level that looked like:
>>>
>>> / {
>>>   ramoops {
>>>     compatible = "ramoops";
>>>     reg = <...>;
>>>     record-size = <...>;
>>>     dump-oops;
>>>   };
>>> };
>>>
>>> ...and these Chromebooks assumed that the downstream kernel would make
>>> console_size / pmsg_size match the record size.  The above ramoops
>>> node was added by the firmware so it's not easy to make any changes.
>>>
>>> Let's match the expected behavior, but only for those using the old
>>> backward-compatible way of working where ramoops is right under the
>>> root node.
>>>
>>> NOTE: if there are some out-of-tree devices that had ramoops at the
>>> top level, left everything but the record size as 0, and somehow
>>> doesn't want this behavior, we can try to add more conditions here.
>>>
>>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
>>
>> I like this; thanks! Rob is this okay by you? I just want to
>> double-check since it's part of the DT parsing logic.
>>
>> I'll pick it up and add a Cc: stable.
> 
> Hold off a second--I may need to send out a v2 but out of time for the
> day.  I think I need a #include file to fix errors on x86:
> 
>> implicit declaration of function 'of_node_is_root' [-Werror,-Wimplicit-function-declaration

Instead of checking "of_node_is_root(parent_node)" the patch could check
for parent_node not "/reserved-memory".  Then the x86 error would not
occur.

The check I am suggesting is not as precise, but it should be good enough
for this case, correct?

-Frank

> 
> I'm unfortunately out of time for now, but I'll post a v2 within the next day.
> 
> 
> -Doug
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
