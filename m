Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C30775F64
	for <lists+linux-rockchip@lfdr.de>; Fri, 26 Jul 2019 08:59:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4m7zajdvoxbJEGzvZDpW+q8of2x83n32kPdmbHcJRU=; b=fuuFi02L9DG8LP
	luDgxJb9LVOD4sZWtycYr+A2riZKwQag8ZESD0oJ6SZqY2UlHmEluxuwrFyThpUdXub5PmD10QLl5
	ilu/H1Jv2od81gFZ9cVLnG2WRs5E+QUJ6nDQL7iK60/PsN2oba+54HkdLL1TC6TywR5AdTsmqZoJz
	pZUxD/nbEGBK0pJM/L1njcSTZNMXWAVYV8Ic23SkArJ301e+joDJnuJ0age/FB6dizAEjCGaDycbE
	ErOGp1Yh4t9V1DXLWNZ+XkunTrQRHAijabLD4do+DansVwfcQVx7i+InJFJtgfinXvC1Z6V0n3+4K
	WpYztuAgQqqZFXIVzKdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hquCJ-0007pA-BC; Fri, 26 Jul 2019 06:59:23 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hquCD-0007oP-Ar
 for linux-rockchip@lists.infradead.org; Fri, 26 Jul 2019 06:59:19 +0000
Received: by mail-lj1-x244.google.com with SMTP id v24so50517430ljg.13
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Jul 2019 23:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WCNBl+Ug67OirRYmmdId1xroOSBlthiYyyJdmUhZr+E=;
 b=bphLnQl4h6MxwvA8ZiJF1bGWqs65QUNNA0He6fWmoAZ4BWChP8rGV7l5acGIJ8ofPv
 AvQzxTq/gGVePK5mDfqidXpaA6mgbx+XskXZE8+etrXCdXKGNtrMzouzpgX8lhetn4d7
 oSfRAFozndPLHn08KxWFRmhVr5fyfLR1zd6Ik=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WCNBl+Ug67OirRYmmdId1xroOSBlthiYyyJdmUhZr+E=;
 b=ngGjrIBWBrbzf/44Es1FH5ONDH8m0hh77PIQ7YALheF/NpRbJUImOEZ2OvzfSpdsYC
 voCTH9MTs6lKJEGEuG+CDO75Vxaz7GCKqR0SDI7o4YnZxqr8pC/+rLIg570ZIr+Wd5tP
 bhT1WwSAKqIpunWCNcRL//Xq7FcCKHvK6blruRN0FyYSahfGFbaz+l8Cap+uXXEgyO+i
 YvxTq/j7UN3gcLhUlBU1hj2gca90z3y4cNPIZ8Y6nLTgEqf/sp+oAJ/2MxjWSKJJKUqc
 llJJPq+4CEjUsf9rppsU44ax/mB1M04VcZqCv7Fo5ycfHvpeSq14ClywsaEkB/lf7pTc
 DLBQ==
X-Gm-Message-State: APjAAAWzxN3TM/TUVetwJb+czk5HmWvgegFM2PCVrem53roqE7oV01eG
 Fdd6unHFvKp/6q8asX/Baro=
X-Google-Smtp-Source: APXvYqzO6G4Vsb2mfV6DZrmgtEEhQdPflr3TLxLyonDnJUm8SF3mdvsPwlBeWMhNCVFyNb/inIoOvw==
X-Received: by 2002:a2e:834e:: with SMTP id l14mr2719876ljh.158.1564124354332; 
 Thu, 25 Jul 2019 23:59:14 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id z22sm9835284ljz.20.2019.07.25.23.59.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 23:59:13 -0700 (PDT)
Subject: Re: [PATCH 1/9] lib/sort.c: implement sort() variant taking context
 argument
To: Andrew Morton <akpm@linux-foundation.org>,
 Boris Brezillon <boris.brezillon@collabora.com>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
 <20190619121540.29320-2-boris.brezillon@collabora.com>
 <20190725170547.a8a357dd76cc586f475b782d@linux-foundation.org>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <66755c09-53f1-24e9-0160-6bcc78c4d2e1@rasmusvillemoes.dk>
Date: Fri, 26 Jul 2019 08:59:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190725170547.a8a357dd76cc586f475b782d@linux-foundation.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_235917_558668_74EEEC25 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 26/07/2019 02.05, Andrew Morton wrote:
> On Wed, 19 Jun 2019 14:15:32 +0200 Boris Brezillon <boris.brezillon@collabora.com> wrote:
> 
>> From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
>>
>> Our list_sort() utility has always supported a context argument that
>> is passed through to the comparison routine. Now there's a use case
>> for the similar thing for sort().
>>
>> This implements sort_r by simply extending the existing sort function
>> in the obvious way. To avoid code duplication, we want to implement
>> sort() in terms of sort_r(). The naive way to do that is
>>
>> static int cmp_wrapper(const void *a, const void *b, const void *ctx)
>> {
>>   int (*real_cmp)(const void*, const void*) = ctx;
>>   return real_cmp(a, b);
>> }
>>
>> sort(..., cmp) { sort_r(..., cmp_wrapper, cmp) }
>>
>> but this would do two indirect calls for each comparison. Instead, do
>> as is done for the default swap functions - that only adds a cost of a
>> single easily predicted branch to each comparison call.
>>
>> Aside from introducing support for the context argument, this also
>> serves as preparation for patches that will eliminate the indirect
>> comparison calls in common cases.
> 
> Acked-by: Andrew Morton <akpm@linux-foundation.org>
> 
>> --- a/lib/sort.c
>> +++ b/lib/sort.c
>> @@ -144,6 +144,18 @@ static void do_swap(void *a, void *b, size_t size, swap_func_t swap_func)
>>  		swap_func(a, b, (int)size);
>>  }
>>  
>> +typedef int (*cmp_func_t)(const void *, const void *);
>> +typedef int (*cmp_r_func_t)(const void *, const void *, const void *);
>> +#define _CMP_WRAPPER ((cmp_r_func_t)0L)
> 
> Although I can't say I'm a fan of _CMP_WRAPPER.  I don't understand
> what the name means.  Why not simply open-code NULL in the two sites?

That's the preparation part. Once I find time to tie up the loose ends,
there'll be a

  sort_by_key(base, num, swap, key)

where base must be a pointer to (array of) struct foobar, and key is the
name of an u32 or u64 (more can be added) member. Internally, that will
work by calling sort_r with a sentinel _CMP_SORT_U32 (or _CMP_SORT_U64,
...) as cmp function and offsetof(typeof(*base), key) as the priv argument.

In do_cmp, we then check whether the cmp function is a small
non-negative integer and then do the appropriate comparison directly
instead of doing an indirect call.

And this infrastructure will be shared with list_sort which will grow a
similar list_sort_by_key(). I think the actual value of _CMP_WRAPPER
will change to simplify that part, so for that reason alone I won't
hard-code NULL.


>> +static int do_cmp(const void *a, const void *b,
>> +		  cmp_r_func_t cmp, const void *priv)
>> +{
>> +	if (cmp == _CMP_WRAPPER)
>> +		return ((cmp_func_t)(priv))(a, b);
>> +	return cmp(a, b, priv);
>> +}
>> +

i.e., this becomes something like

if ((unsigned long)cmp <= ...) {
  if (cmp == CMP_WRAPPER)
     // called from sort(), priv is the original cmp_func pointer
     return ((cmp_func_t)(priv))(a, b);
  // must be called from sort_by_key, priv is the offset in each struct
  long offset = (long)priv;
  a += offset;
  b += offset;
  if (cmp == CMP_U32)
    return *(u32*)a > *(u32*)b;
  if (cmp == CMP_u64)
    return *(u64*)a > *(u64*)b;
  WARN_ONCE() // should be eliminated by smart enough compiler
  return 0;
}
return cmp(a, b, priv);

>>  /**
>>   * parent - given the offset of the child, find the offset of the parent.
>>   * @i: the offset of the heap element whose parent is sought.  Non-zero.
>> @@ -171,12 +183,13 @@ static size_t parent(size_t i, unsigned int lsbit, size_t size)
>>  }
>>  
>>  /**
>> - * sort - sort an array of elements
>> + * sort_r - sort an array of elements
>>   * @base: pointer to data to sort
>>   * @num: number of elements
>>   * @size: size of each element
>>   * @cmp_func: pointer to comparison function
>>   * @swap_func: pointer to swap function or NULL
>> + * @priv: third argument passed to comparison function
> 
> Passing priv==NULLis part of the interface and should be documented?

No, to sort_r() as a public function @priv is completely opaque, and the
user can pass anything he likes. Only when sort_r() is called
"internally" with a sentinel value of cmp_func (e.g. from sort() or
sort_by_key()) does the priv argument have any meaning, but that's
implementation details that should absolutely not be documented.

Rasmus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
