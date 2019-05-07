Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D2016D84
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 00:23:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dqqHpaH5Pi/BEfUWz0bfqSGwCdue0ny3u6eH1cPBovE=; b=Rm4xEerdmWc/VD
	CYmayGOTVUbsDOlG+4W8kBPG4LtKvBK3zxQ+bhMhGIqdQUXmRI5iyHBjvq7Wd8wqi2AlSlz340TSm
	cMXMeg4PnhH4BarvAy6WTHEdul7GUDd0qXtDJr2aEZwrgQ52QSSJnSIv80+HeYXnEefgXo0a5xBX9
	1KXN/fkwxeVd+Mk/eQZu2XzGfZpePwEqATgI+O4G+Tvc5D0MiNl6Obky8CNeuWNeYlli2vL8bmWfi
	TkjlFGEQvbBub1Gu+UuMmxfIhr+om1VSHd8225VvlCRFtaa9nJ4QEPbbkBQ2sLy7aNO1IGZZHxI+G
	7u7eL7tUwvLQu8EXvfdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO8Ux-0000D0-HF; Tue, 07 May 2019 22:23:43 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO8Uu-0000Cg-Nj
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 22:23:42 +0000
Received: by mail-pl1-x644.google.com with SMTP id bi2so8852785plb.13
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 15:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JOHw2h4WyfdeqecBWC0/iiXTy8donTOhcpgp2J9sTnQ=;
 b=vSvIk4EdOijXKIbUmWx0TMPDlflej3piFu8e+Jx6PFhJP7+snSHmhTywYinYiI1BOa
 46i1Qpw6NrvT603v7l2UA+0fKGbMpBLXH4jcipDVxzGQkwzZzjbW/hibxcFkQqZa4TIm
 7aZyDt3A0UHKtygqFBRth3vQnGlxrE/kGvIYkEJ0PErZ4v7yZY1XXP3fU4UEOca2TauH
 v0AY2uwG8dXuefNsp6Pp47la9Hz55w8SmlX56BoQkiua+M2L62Vg4uvHYpTHCdKdpbLX
 Wjwy+NO3QfMblucBDT+6U1tCIekfLOI7Lz0ljDtivyeMYvE9uBLtk5fpKU+MWzgCOMOb
 rQsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JOHw2h4WyfdeqecBWC0/iiXTy8donTOhcpgp2J9sTnQ=;
 b=UtWJxgIQasGZYMMNvsH9P7duEUFN+BKyAtdvFLZtY6x3pFY6DfFp40w94bA2aY39hk
 r3sG/VLuVQ8rKjStWbtyYnt0JtK/dR4QKvpQLmxorDkXypxAo6beL4mng+zSbhyIa4ys
 NHz5ToEAm66jtwkxOVn60sCmfBrekHjC4KHZT7eOh+0UCUOj32sMeH3ZOf0KehD2bCwc
 buf04eaHYddXXY0CC4Yj30SqNXpYICc8o7B74kghN9V1/qjRZX+sL0uCEAAuRoLHuCFX
 ra+6YZFbckGE8mHLoxhL0B6E79p8dkYnvVkABMG7ltY3quYLjKX4EJWnpQPr+XM1wxdc
 807Q==
X-Gm-Message-State: APjAAAUdj8DfixMcmYxFG7nHoWoDbrTsJ1lPNVGkVeUxctjlAUAiQhgb
 MTXFYkGvP1Z6zAegFUzSbzM=
X-Google-Smtp-Source: APXvYqzBkTd5yf+Lj1mGYorifVu73EKwCvtafjIH+u/EGe+ZhtZyFI7DI2NtItE9xU9g6C3iwgnLvg==
X-Received: by 2002:a17:902:b614:: with SMTP id
 b20mr6128707pls.200.1557267819675; 
 Tue, 07 May 2019 15:23:39 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
 [24.6.192.50])
 by smtp.gmail.com with ESMTPSA id i1sm703349pgj.70.2019.05.07.15.23.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 15:23:39 -0700 (PDT)
Subject: Re: [PATCH] pstore/ram: Improve backward compatibility with older
 Chromebooks
To: Doug Anderson <dianders@chromium.org>
References: <20190503174730.245762-1-dianders@chromium.org>
 <CAGXu5jL9cJ+8scZ+Cg9yqdc9+rb563xs-qVjXXuPRJYjNa4Y8w@mail.gmail.com>
 <CAD=FV=WcjfUwH62bHVELOmzViv7d329r6+HfPqAyXMjKCO7LeQ@mail.gmail.com>
 <30361ae7-36a6-0858-77ec-40493ef44b98@gmail.com>
 <CAD=FV=U5heONCv=W5x6cL_JAmJaeDrjMa0CnQ=UVu+DTZZBNKQ@mail.gmail.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <90974ece-ab3a-7f5a-7d71-bd8a0d1d5aec@gmail.com>
Date: Tue, 7 May 2019 15:23:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAD=FV=U5heONCv=W5x6cL_JAmJaeDrjMa0CnQ=UVu+DTZZBNKQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_152340_805333_DD5A0D90 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
 Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>,
 Anton Vorontsov <anton@enomsg.org>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Colin Cross <ccross@android.com>,
 Guenter Roeck <groeck@chromium.org>, Julius Werner <jwerner@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Doug,

On 5/7/19 3:19 PM, Doug Anderson wrote:
> Hi,
> 
> On Tue, May 7, 2019 at 3:17 PM Frank Rowand <frowand.list@gmail.com> wrote:
>>
>> On 5/6/19 4:58 PM, Doug Anderson wrote:
>>> Hi,
>>>
>>> On Mon, May 6, 2019 at 2:10 PM Kees Cook <keescook@chromium.org> wrote:
>>>>
>>>> From: Douglas Anderson <dianders@chromium.org>
>>>> Date: Fri, May 3, 2019 at 10:48 AM
>>>> To: Kees Cook, Anton Vorontsov
>>>> Cc: <linux-rockchip@lists.infradead.org>, <jwerner@chromium.org>,
>>>> <groeck@chromium.org>, <mka@chromium.org>, <briannorris@chromium.org>,
>>>> Douglas Anderson, Colin Cross, Tony Luck,
>>>> <linux-kernel@vger.kernel.org>
>>>>
>>>>> When you try to run an upstream kernel on an old ARM-based Chromebook
>>>>> you'll find that console-ramoops doesn't work.
>>>>>
>>>>> Old ARM-based Chromebooks, before <https://crrev.com/c/439792>
>>>>> ("ramoops: support upstream {console,pmsg,ftrace}-size properties")
>>>>> used to create a "ramoops" node at the top level that looked like:
>>>>>
>>>>> / {
>>>>>   ramoops {
>>>>>     compatible = "ramoops";
>>>>>     reg = <...>;
>>>>>     record-size = <...>;
>>>>>     dump-oops;
>>>>>   };
>>>>> };
>>>>>
>>>>> ...and these Chromebooks assumed that the downstream kernel would make
>>>>> console_size / pmsg_size match the record size.  The above ramoops
>>>>> node was added by the firmware so it's not easy to make any changes.
>>>>>
>>>>> Let's match the expected behavior, but only for those using the old
>>>>> backward-compatible way of working where ramoops is right under the
>>>>> root node.
>>>>>
>>>>> NOTE: if there are some out-of-tree devices that had ramoops at the
>>>>> top level, left everything but the record size as 0, and somehow
>>>>> doesn't want this behavior, we can try to add more conditions here.
>>>>>
>>>>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
>>>>
>>>> I like this; thanks! Rob is this okay by you? I just want to
>>>> double-check since it's part of the DT parsing logic.
>>>>
>>>> I'll pick it up and add a Cc: stable.
>>>
>>> Hold off a second--I may need to send out a v2 but out of time for the
>>> day.  I think I need a #include file to fix errors on x86:
>>>
>>>> implicit declaration of function 'of_node_is_root' [-Werror,-Wimplicit-function-declaration
>>
>> Instead of checking "of_node_is_root(parent_node)" the patch could check
>> for parent_node not "/reserved-memory".  Then the x86 error would not
>> occur.
>>
>> The check I am suggesting is not as precise, but it should be good enough
>> for this case, correct?
> 
> Sure, there are a million different ways to slice it.  If you prefer
> that instead of adding a dummy of_node_is_root() I'm happy to do that.

Yes, I would prefer to avoid adding a dummy of_node_is_root() if the
alternative is reasonable (and if I understand, you are saying the
alternative is reasonable).

Thanks,

Frank


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
