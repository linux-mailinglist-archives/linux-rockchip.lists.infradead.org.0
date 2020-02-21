Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 152DA167F9B
	for <lists+linux-rockchip@lfdr.de>; Fri, 21 Feb 2020 15:06:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:In-Reply-To:
	References:MIME-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QZOa6zDXVemYm6eTykJ+zizqRsX8rnNt09VmpgIxMzo=; b=I0mN/ZDMGZfPof
	t5PtIIr1NWak/8TD6ItmHS5pD0GiG1CNUSKr7o8hB2uOkkh40zhG3qhV8XwWh81r4giD3JIhGB69V
	do2H5rTbUzYKR0iGTtTjN4pRNbxF04n9wWTiDeGm2d7rZnKAVeF8ldABoAZKniWRX6T4VSzAIgNcL
	F1GrLgFuCbCD5jiKTuTQWvBnfq6OMJ1pgwZ09X5wO5XDpTNtDGqZXFd6Mf/ypB7rKshbTaVyt5gV7
	u40Fz0QwowmSLPIhkS0vqNEC6vIYaYQYK8vZiOfW3V6vs7QklFxEjM9dHVaI0K96JdnLhL80oRaUF
	Ar1VrzN+eD3t2VESzOpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j58wj-0006w4-D5; Fri, 21 Feb 2020 14:06:25 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j58wg-0006vM-5N
 for linux-rockchip@lists.infradead.org; Fri, 21 Feb 2020 14:06:23 +0000
Received: by mail-qk1-x732.google.com with SMTP id o28so1861898qkj.9
 for <linux-rockchip@lists.infradead.org>; Fri, 21 Feb 2020 06:06:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
 h=from:mime-version:references:in-reply-to:date:message-id:subject:to
 :cc; bh=DiyvrX9xQKujU8ps51BYPHqKGJq6CWTBSoEZ36cxK9o=;
 b=h5ekut7f9mAYdIsbofbHgwxljL5Ld8S9zUzMm34R2D16whmTzt29fj0dOn2M/ZxERG
 s8ps6ii0Uh6357U4zyAA8oI1cnp/uvK/rUJWqmwA0qo5lTe5V+pIVcXmM3b3IAdPHtf7
 4HEjAG8VPFoOCURl7PTlteg4hlUJJpnEKIIq4lo1HoqIiVR895Y5DdXUHqgCRX5RtXk0
 7Mm90ZM+F5BuOkdrKCiGYzmeWtLWN2OdKd9g+6hOagi3B9nLT7NvS57egp2uRU1LUru9
 VqzRvnhTN/or/jR4UMLWfiaI4cygxNb5uMBnLhiPl1Bp1wryBPNiy1n5pREVTnpuyYPr
 7GyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:references:in-reply-to:date
 :message-id:subject:to:cc;
 bh=DiyvrX9xQKujU8ps51BYPHqKGJq6CWTBSoEZ36cxK9o=;
 b=JeZPQD535Sqhqi35+MdU3ueTMSWY75jxF8grsudBPrm4qfsYXXfk3hV+nY1zlRVCim
 Unus6EUf3gh7zlt+14HyZ8yjfNRnVuGTFAsNUIjHapn8PNjKYddWYE8uJ42kD8t8rWsh
 1ZGq6Ka+nMqIXFVSsSVM+ji0of0ygoOa7Y4OMQ83uEGlTKGzhJbIIDmChobAZuAzusyV
 kyMAZp8KSW62/KZ0KxyXNl2+v3IeHsmNfYuFBC+QT2qjs53Nmi/WAuDrPRc6JXXeV0aC
 u1ptojDYnam0rgFYJ+PrsVjjWqe87bpyqlgOmr6v2qMTp5vZ12A8Qo4iDo0Y2IWeuDMf
 /E2g==
X-Gm-Message-State: APjAAAW6wQSE4pqhRVERHorm2bNrr5fBVC6MeRgNGloTg1iwsY1RZf1y
 H/xuwjd0bJ4Yw+o7vh5UVydZZZrZpmhg1w==
X-Google-Smtp-Source: APXvYqwW5ZU37f76vwt8WloVcB7o4jeADJE7jG3Zosn1PqGTUCmFlN+0NdbONcXLuZaqSc/TDOwmiw==
X-Received: by 2002:a37:349:: with SMTP id 70mr33870858qkd.351.1582293980249; 
 Fri, 21 Feb 2020 06:06:20 -0800 (PST)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com.
 [209.85.160.169])
 by smtp.gmail.com with ESMTPSA id v7sm1582581qkg.103.2020.02.21.06.06.19
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 21 Feb 2020 06:06:20 -0800 (PST)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-qt1-f169.google.com with SMTP id t13so1328372qto.3
 for <linux-rockchip@lists.infradead.org>; Fri, 21 Feb 2020 06:06:19 -0800 (PST)
X-Received: by 2002:ac8:607:: with SMTP id d7mr31861329qth.271.1582293978531; 
 Fri, 21 Feb 2020 06:06:18 -0800 (PST)
MIME-Version: 1.0
References: <CAP9ODKprPi8N-dU8NaKwneXH-3b0ipSEDpU5mDbGntxuyhGhJw@mail.gmail.com>
 <41a7bfe7-54b1-84eb-091f-469d971ab968@synopsys.com>
 <CAP9ODKoUH=Cc=uuhfaUy7fkSVdfBHhX-6oS9_hi3Wd6GgDiZYw@mail.gmail.com>
 <ee47be28-ba9f-750f-65d2-51a722ce291d@synopsys.com>
 <CAP9ODKqa_4NSsFMUpyFDt3ohgGBCMgbOyKaVjYfSjmcZLmmC+A@mail.gmail.com>
 <380d765b-8867-a899-b67a-c016c09fa27b@synopsys.com>
 <CAP9ODKqL_GN+iebL3wPX_9fEUtUVP8Ahv03yJ1R-JLDr=Cn0BA@mail.gmail.com>
 <beddbc55-fd22-96b7-c980-e4ea207a42f5@synopsys.com>
 <CAP9ODKq2nEHz_rbwwCv-94LSBOq0it2Kc4yhCqrLT-XxoXommg@mail.gmail.com>
 <1d2ee918-57e4-53b2-6953-0107d7720c59@synopsys.com>
In-Reply-To: <1d2ee918-57e4-53b2-6953-0107d7720c59@synopsys.com>
Date: Fri, 21 Feb 2020 11:06:06 -0300
X-Gmail-Original-Message-ID: <CAP9ODKoS5KQrhTrUvahHEhQG-WA+bfLnP4tTFxzrQaGh1nTcZw@mail.gmail.com>
Message-ID: <CAP9ODKoS5KQrhTrUvahHEhQG-WA+bfLnP4tTFxzrQaGh1nTcZw@mail.gmail.com>
Subject: Re: USB DWC2 stops responding when insert/remove cable multiple times
To: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_060622_265234_DAD9FA89 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:732 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Felipe Balbi <balbi@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello Minas,

On Fri, Feb 21, 2020 at 3:52 AM Minas Harutyunyan
<Minas.Harutyunyan@synopsys.com> wrote:
> On 2/20/2020 5:16 PM, Otavio Salvador wrote:
> > Hello Minas,
> >
> > Thanks for all your help on this, ...
> >
> > On Thu, Feb 20, 2020 at 3:59 AM Minas Harutyunyan
> > <Minas.Harutyunyan@synopsys.com> wrote:
> >>
> >> On 2/19/2020 7:10 PM, Otavio Salvador wrote:
> > ...
> >>> What sequence do you want us to do?
> >>
> Please provide dwc2 debug log when stop working with g_serial exception
> dump inside.
> Also provide dwc2 log when it's work without issue.

Attached.

> >> Yes. Can you provide also USB trace >
> > I can, however, it is not clear to me what you want us to do.
> >
> > Should we use, on host side, usbmon? or do you want something different?
> >
> Do you have any USB tracer equipment to record trace between host and
> device?

I don't. Can we instrument the kernel somehow to gather the info we need?

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9 9981-7854          Mobile: +1 (347) 903-9750

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
