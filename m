Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6367619C
	for <lists+linux-rockchip@lfdr.de>; Fri, 26 Jul 2019 11:15:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KEcSq+7Gn94qA8TH7Hb1N1qdXO1LgPy1kghHKmQ9SYU=; b=PZFPhD0TOPLn8hD0QGbZRHQ4F
	3IG4dfgtAJgt3moASeOLpD+ZXWV7l6KPQYquoaDuYFUkG1zgctz1QxGZuOpiOzj8L3CNLbneYwLaD
	VzvTrOYZEMwyj17eyAt4w92QjhQMvtWVzAdDv7FDQpgyGO5MPyVgXJJP1bnCPugvSik0NMIZhKxp9
	GYVzAXybUh3cBCWaHSFY9oDSoxqQV38IxoBfNLLpmOtB3hV525dUN2nxmRKeONB3a6P4E5apW5IY0
	FxwK+ZpHoUTGYjBMhD0MFtf2eyzzKewUzSw5ZYsOXp4r6QOSg3dVRGGAJjSfHQUJ0Y5XrKVVeu4Zm
	YEyUJcwYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqwJf-0000ny-T7; Fri, 26 Jul 2019 09:15:08 +0000
Received: from outgoing18.flk.host-h.net ([197.242.87.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqwJa-000087-1b; Fri, 26 Jul 2019 09:15:04 +0000
Received: from www31.flk1.host-h.net ([188.40.1.173])
 by antispam5-flk1.host-h.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1hqwJJ-0005sO-M7; Fri, 26 Jul 2019 11:14:47 +0200
Received: from roundcubeweb1.flk1.host-h.net ([138.201.244.33]
 helo=webmail9.konsoleh.co.za)
 by www31.flk1.host-h.net with esmtpa (Exim 4.84_2)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1hqwJI-0003iD-Ud; Fri, 26 Jul 2019 11:14:45 +0200
MIME-Version: 1.0
Date: Fri, 26 Jul 2019 11:14:44 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] ARM: dts: add device tree for Mecer Xtreme Mini S6
Organization: Rising Edge Consulting (Pty) Ltd.
In-Reply-To: <1618985.EOrKlNyPW4@phil>
References: <20190616204746.21001-1-justin.swartz@risingedge.co.za>
 <1618985.EOrKlNyPW4@phil>
Message-ID: <509782f4ece936f5ac7d0abffbd555fc@risingedge.co.za>
X-Sender: justin.swartz@risingedge.co.za
User-Agent: Roundcube Webmail/1.2.3
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear (ClamAV 0.100.3/25521/Thu Jul 25 10:12:55 2019)
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net;
 auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.10)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0QR3kh8pms4IGrDTloUGIkypSDasLI4SayDByyq9LIhVb87cW502DfY5
 A3TFjr/Q/0TNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3Kf0cVcrGOWHuvhhsNFanSQ+63
 p/UbUTcmIpuXtxg/CxkoU3DKFYUc83wlJ68apqUflsInmcmrhWKh5CGxWvoqRSom1N6/V6eFJqiY
 8AHI8ZE2UOjrQY19nYX/K9cXl+nRiJs637DFkSoL4pcNpzwOwYXt6ymoFHaG7BQtEYvFCSpHGdnf
 o9UqdkwD4pFOnnu92G81dFO0E3gi+MOI1foZYzDggRXhpvoPtF3cVkniFXU3qJSqpdJudO6+rkiw
 E5i8Wl78Q18OeOfsy4h7jF1Uv9lnibl3vcBqVmvQB4A18af5AwOH28jF9Eyby2LkU1c4AVXirbLu
 Jjy3NtnGWLbnBGfrUBEXB2fYGLNieGQuoHtJvp0r29Rf3ZjFwL+MhHEWw/0qBlNDp8uABz3dkWV+
 tgmYFaNu+2UDArzT1gq7P+ZTycYLFeAN4+MGwnsp7SkU6CLbyF0Zq4b1/7rjUzETJrWks4pbbQJq
 6gWopI3ep45X19ZysgQ+31LcAX8eoFXAhohfegXGH2GIVQVglJFbK771YV8YbC29CtmpcTqTfSIf
 CWq9oj7OiT8GwpAriB+3/81I3rvR8KJ2fK9jiDYgijyqqY0rATpzHKGfmtNsYTr4SmDZ/bGW8xZC
 RRs6ZD24UhFcZZEpLhnBCwImTQNvxaLyCc35VA7RvW/HGiGqxL09Cymermt8NAa/gGopT3kKfO4C
 gvcKmV0o9jYzsFpuc43pp/LzIs3ornuRuAAdgrkq+6l7ZLNYJcf7Z6PCydDzoYZgInuDxgFOs7AZ
 TwbwMWQbSR6Wmuan/Ls9Qsz9RDBQm36ApPA3w0769BEb21L838NrFoXSENXH6UXfnav35JPA4YfM
 6tBkXsqvKY6zoLLTPpuFqUUQz+mM8JAD4ECWNo09vb0YLIRnK477e9Xake5PIWKjIXX7qe2zOXoS
 fowN9R0iqxX4tRGXU6pi4Whf0gC4y7e8G5gyWkWqMf9mIGbjO41FyBEqIaDudcVplPE6wCr6GXU1
 lCw88ijyus1sGnWknJqS8gGhNQxpB5P3qu7c1xMljx2PG/R+pKBSKy8hXOgvE1zSS7XUhkYEQYeb
 3jR5NeVaJQBh0uawl0Cg8j+knAzOA9mmoJvkuhKHiekUuskYaI6ERCKp8gXWqnT9kLHhStr5fiGK
 7KncpWELuTEvuGslKTrRIXcXpFg5ivY=
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_021502_128170_90283D2C 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [197.242.87.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Heiko,

On 2019-07-26 00:19, Heiko Stuebner wrote:

> please add an entry to 
> Documentation/devicetree/bindings/arm/rockchip.yaml
> for your board and if necessary also a vendor-prefix to
> Documentation/devicetree/bindings/vendor-prefixes.(yaml?)

OK

> please sort the &node-references alphabetically.

OK

>> +&cpu0 {
>> +    clock-frequency = <1464000000>;
> 
> not sure I understand the reasoning here.
> There seems to be a regulator defined, so the cpu cores should
> have operating points defined to allow them to switch between
> different frequencies as needed.

I added the clock-frequency property to quell the following messages:

[ 0.003273] /cpus/cpu@f00 missing clock-frequency property
[ 0.003323] /cpus/cpu@f01 missing clock-frequency property
[ 0.003352] /cpus/cpu@f02 missing clock-frequency property
[ 0.003382] /cpus/cpu@f03 missing clock-frequency property

I think they are from parse_dt_topology() in arch/arm/kernel/topology.c

What do you suggest?

Regards
Justin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
