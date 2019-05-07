Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D2516D7A
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 00:18:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sxqv1S/6Xujr5u1ZgX0jrNtxrRxs8dVPLN3Y/9Nu1H4=; b=iO6PNyE3IEwsp8
	9VD3ioG63260zeWGB8tx8dm4gOrIJrFZK6kAD770k34UKWHrURMmmtAlrYCeD/nUax70pD9bYCx2x
	Gvs3hV9sescy3pcDqmbTdx5yfFgXGuVvjc/IsP39KmjfhezmJlIgC3AeOQeZI7AVlm5M/y+WIIo1q
	SgJ29M9ovdCdUs7Ir8od5rVRY0VXas4gyUN0JGncH8ECiPvBonENQdugL7/I1EdeVut+i7GYU2leH
	VC2uq8OC0Zri7aorgECYU6AruIFrd9V8T9GBXF6V4YgqGQEk7Ml4VYqZT6MXGRR6qYFAr1HLfiN+3
	VJjh+7rJkPyisWhNgbNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO8PP-00060w-UM; Tue, 07 May 2019 22:17:59 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO8PM-00060G-F1
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 22:17:57 +0000
Received: by mail-pf1-x441.google.com with SMTP id c6so4163161pfa.10
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 15:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gZFWt3ZjdE2K8WseWLL9Mg/hno4mNEC9/tCwkX2YV1o=;
 b=SIhb5IDuHKGjmob+l0eNNMfXWQJM2boLCLgYrA101K/wscHUY8s8cOlNwvN6YOvL8J
 ZeCIohPChHHWaXDN5IffRNICcXJCITEPZ6Ci1W68/KOr1b3Elp6BbIrwLmVZQHf+Xenj
 Kno3EX6b8GmQdCdE4stqKXdoAKOT5RJ1i6KTkJC18/gzixCCP9MGAG5u13WYeEgtrNAK
 Qr3FjqaFQTSiWf6SwVSamGdQVQonMaHoy9uy9qDUQtrX12kOcHsCuSH2mudFOwnnAFoc
 PkTrf0ue4VbJBFtVVctWPjcWqWoFcBVZguTk2z/vm59oapnfw8Zy/m3Atgtgb1TwScl4
 bq1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gZFWt3ZjdE2K8WseWLL9Mg/hno4mNEC9/tCwkX2YV1o=;
 b=GofYgYwTY45aQ9BHJBvdXC9cEBuBBQQjuFnafzvxZFEhMJldX7alLkzft8zOOECZSR
 gRY0Ysf+3mV9FktQxV2XDJ2eeddoe/Yj+WTj01oX6KEg2kxzUWKujbVjOZhqEfDXnIYQ
 lVWUNrxxCfvIgFV5CfIhg8SLef8HFp09DSo6Ll+y0/OdkgBqoJ897OorFx+Jb4hsfeuA
 S0KCKwj2nZOuQxYQiI6iX4j7UCvQSrcqaKck3CdL5B/f3RZvSVc4fUnyNjokukTBpGxL
 O+E9E7zWqdXlZj08pdUrZDgsmqM8G00sAZSEiPzeui1zSW/RjpBDK5Uty4ailmRpIiQ2
 wm1Q==
X-Gm-Message-State: APjAAAUvVtM0nI3JrUtsqhcJkLcR4d3LhsSa8c+XJYg5YHiY0B359j/D
 0vmgv8ONlUdi7Oikj4+xlbU=
X-Google-Smtp-Source: APXvYqxb5Mqj5qIHlP1Tr2YJnw/RPfX7kUj/WTB6Nc6oUwqC7G/DiG/3+UOOF19ZQ0isMxEr4RO/zg==
X-Received: by 2002:a62:2506:: with SMTP id l6mr27682044pfl.250.1557267475792; 
 Tue, 07 May 2019 15:17:55 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
 [24.6.192.50])
 by smtp.gmail.com with ESMTPSA id i1sm693977pgj.70.2019.05.07.15.17.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 15:17:55 -0700 (PDT)
Subject: Re: [PATCH] of: Add dummy for of_node_is_root if not CONFIG_OF
To: Doug Anderson <dianders@chromium.org>
References: <20190507044801.250396-1-dianders@chromium.org>
 <a3573253-e3de-0a82-8af3-6bacea20bd97@gmail.com>
 <CAD=FV=UAFUH12DbA++HML75E55BCttpNBxe9t-VEQvGjGx0=Wg@mail.gmail.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <18324244-cca8-a836-5c2e-c626ca8771aa@gmail.com>
Date: Tue, 7 May 2019 15:17:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAD=FV=UAFUH12DbA++HML75E55BCttpNBxe9t-VEQvGjGx0=Wg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_151756_506274_6188EC6A 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: devicetree@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Brian Norris <briannorris@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Guenter Roeck <groeck@chromium.org>,
 Julius Werner <jwerner@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 5/7/19 10:59 AM, Doug Anderson wrote:
> Hi,
> 
> 
> On Tue, May 7, 2019 at 10:52 AM Frank Rowand <frowand.list@gmail.com> wrote:
>>
>> On 5/6/19 9:48 PM, Douglas Anderson wrote:
>>> We'll add a dummy to just return false.
>>
>> A more complete explanation of why this is needed please.
>>
>> My one guess would be compile testing of arch/sparc/kernel/prom_64.c
>> fails???
> 
> Ah, sorry.  Needed for:
> 
> https://lkml.kernel.org/r/CAD=FV=Vxp-U7mZUNmAAOja5pt-8rZqPryEvwTg_Dv3ChuH_TrA@mail.gmail.com

Got it.  I went and looked at that.  I think a better approach would be to
check parent node not "/reserved-memory".  I am making this suggestion in
that email thread.

-Frank

> 
> 
> 
> -Doug
> .
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
